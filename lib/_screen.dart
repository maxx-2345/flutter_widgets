import 'dart:io';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:app_settings/app_settings.dart';

class LocationPermissions extends StatefulWidget {
  const LocationPermissions({super.key});

  @override
  State<LocationPermissions> createState() => _LocationPermissionState();
}

class _LocationPermissionState extends State<LocationPermissions> with WidgetsBindingObserver{
  bool _isActive = true;
  bool _isLoading = true;
  Position? _currentPosition;
  bool _locationFetched = false;
  bool isFromSetting = false;
  bool isInSettingCalled = false;
  String? formattedAddress;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      _getCurrentPosition();
    }
    );
  }

 @override
 Future<void> didChangeAppLifecycleState(AppLifecycleState state) async{
    if(!mounted) return;

    if(state == AppLifecycleState.resumed && isInSettingCalled){

      LocationPermission permission = await Geolocator.checkPermission();

      if(permission == LocationPermission.whileInUse ||
         permission == LocationPermission.always){
        if(isFromSetting){
          _getCurrentPosition();}
        } else{
          if(!isFromSetting){
            _showLocationPermissionDialog(context);
          }
        }
      }
 }

 @override
  void dispose() {
    // TODO: implement dispose
   WidgetsBinding.instance.removeObserver(this);
   _isActive = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Location Permission'),
      ),
      body: Padding(
          padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Expanded(
                child: Column(
                  children: [
                    if(_isLoading)
                      const Center(child: CircularProgressIndicator(),)
                    else if(_currentPosition != null)
                      Center(
                        child: Text(
                            "Current location:\nLat: ${_currentPosition?.latitude}\nLng: ${_currentPosition?.longitude}",
                             textAlign: TextAlign.center,
                        ),
                      ),
                    const SizedBox(height: 20,),
                    Center(
                      child: Text(
                        "Current address: ${formattedAddress}",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
            ),
            _buildLocateButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildLocateButton(){
    return GestureDetector(
      onTap: _getCurrentPosition,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6,
              offset: const Offset(0, 3)
            )
          ]
        ),
        child:const Row(
           mainAxisSize: MainAxisSize.min,
          children: [
            Text("LOCATE ME",style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
                fontWeight: FontWeight.bold),
            ),
            Icon(Icons.my_location,size: 24,color: Colors.blue,),
          ],
        ),
      ),
    );
  }


  //Function to get current position
  Future<void> _getCurrentPosition() async {
    setState(() {
      _isLoading = true;
    });
    print("location_check:: 1");
    try{
      final haspermission = await _handleLocationPermission();
      if(!haspermission){
        setState(() {
          _isLoading = false;
        });
        return;
      }
      print("location_check:: got current location");

      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high
      );

      if(!mounted) return;
      print("location_check:: got current location ${position}");
      setState(() {
        _currentPosition = position;
        _isLoading = false;
        _locationFetched = true;
      });

      _updateAddressFromLatLng(_currentPosition!);
      debugPrint("Location: ${position.longitude},${position.longitude}");

    }

    catch(e){
      debugPrint("Error getting location ${e}");
      if(!mounted) return;
      setState(() {
        _isLoading = false;
      });
    }

  }

  //Function to handle location permissions
  Future<bool> _handleLocationPermission() async{
    bool serviceEnabled;
    LocationPermission permission;
    print("location_check:: in handle permission");

    try{
      //Test if location service are enabled
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      print('location_check:: in service location');

      if(!serviceEnabled){
        print('location_check:: in service location --false');

        if(!mounted) return false;
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Location service are disabled. Please enable the services."))
        );
        return false;
      }

      permission = await Geolocator.checkPermission();
      print("location_check:: in permisison ${permission}");

      if(permission == LocationPermission.denied){
        print("location_check:: in permission denied ${permission}");

        permission = await Geolocator.requestPermission();
        if(permission == LocationPermission.denied){
          print("location_check:: in permission denied again ${permission}");

          if(!mounted) return false;
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Location permission are denied"))
          );
          return false;
        }
      }

      if(permission == LocationPermission.deniedForever){
        print("location_check:: in permission deniedForever ${permission}");

        if(!mounted) return false;
        _showLocationPermissionDialog(context);
        return false;
      }

      return true;

    }catch(e){
      print("location_check:: in catch ${e}");
      debugPrint('Error handling location permission: $e');
      return false;
    }
  }

  Future<void> _updateAddressFromLatLng(Position position) async{
    List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);

    if(!_isActive) return;

    print("location_check:: address ${placemarks}");

    Placemark place = placemarks[0];

    setState(() {
      formattedAddress = '';
      formattedAddress = "${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}";
    });
  }

  void _showLocationPermissionDialog(BuildContext context){
    if(!mounted) return;

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: const Text("Location permission required"),
          content: const Text("Please enable location permission in settings to use this feature"),
          actions: [
            TextButton(
              onPressed: ()=> Navigator.pop(context),
                child: const Text("Cancel"),
            ),
            TextButton(
                onPressed: (){
                  setState(() {
                    isFromSetting = true;
                  });
                  Navigator.pop(context);
                  _goToSettings();
                }, child: const Text("Open Settings"),
            )
          ],
        )
    );
  }

  Future<void> _goToSettings() async{
    print("location_check:: in gotosetting");

    isInSettingCalled = true;
    if(Platform.isAndroid){
      await openAppSettings();
    } else if(Platform.isIOS){
      await AppSettings.openAppSettings();
    }
  }
}
