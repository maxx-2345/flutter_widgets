import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

//Function to pick image from camera
  Future<void> _getImageFromCamera() async{
try{
  XFile? photo = await _picker.pickImage(source: ImageSource.camera);
  if(photo!=null){
    setState(() {
      _image = File(photo.path);
    });
  }
} catch(e){
  print("permission error $e");
 if(e.toString().contains("camera_access_denied")){
    _requestCameraPermission();
 }
}
  }

  // Function to pick image from gallery
Future<void> _getImageFromGallery() async{
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if(image != null){
      setState(() {
        _image = File(image.path);
        print("Gallery path $_image\n path: ${image.path}");
      });
    }
}


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image!=null?
            Container(
              height: 300,
              width: 300,
              child: Image.file(_image!,fit: BoxFit.cover,),
            ) :
             Container(
               height: 300,
               width: 300,
               color: Colors.grey,
             ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                borderRadius: BorderRadius.circular(20)
              ),

              width: 150,
                child: IconButton(onPressed: (){
                  _getImageFromCamera();
                }, icon: const Icon(Icons.camera))),
            const SizedBox(height: 5,),
            Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)
                ),
                width: 150,
                child: IconButton(onPressed: (){
                  _getImageFromGallery();
                }, icon: const Icon(Icons.image))),
          ],
        ),
      ),
    );
  }

  Future<bool> _requestCameraPermission() async{
PermissionStatus cameraStatus = await Permission.camera.status;
print("Permission log: $cameraStatus");
if(cameraStatus.isDenied){
  //request permission
cameraStatus = await Permission.camera.request();
}
if(cameraStatus.isPermanentlyDenied){
// Show dialog to open app settings
  // _showSettingsDialog('Camera');
  openAppSettings();
  return false;
}
return cameraStatus.isGranted;
  }

}
