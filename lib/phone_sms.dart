import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneSmsShare extends StatefulWidget {
  const PhoneSmsShare({super.key});

  @override
  State<PhoneSmsShare> createState() => _PhoneSmsShareState();
}

class _PhoneSmsShareState extends State<PhoneSmsShare> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _smsController = TextEditingController();
  final TextEditingController _shareController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _phoneController.dispose();
    _smsController.dispose();
    _shareController.dispose();
    super.dispose();
  }

  //Make Phone Call
  Future<void> _makePhoneCall(String phoneNumber) async {
try{
final Uri launchUri = Uri(
  scheme: 'tel',
  path: phoneNumber,
);
await launchUrl(launchUri);
}catch(e){
  _showErrorDialog("Could not launch phone call $e");
}
  }

  //Send SMS
  Future<void> _sendSms(String phoneNumber , String message) async {
    try{
      final Uri launchUri = Uri(
        scheme: 'sms',
        path: phoneNumber,
        queryParameters: {'body' : message}
      );
      await launchUrl(launchUri);
    }catch(e){
      _showErrorDialog("Could not launch SMS $e");
    }
  }

  //Share Content
  Future<void> _shareContent(String text) async {
try{
  await Share.share(
text,
    subject: "Check this Out!",
  );
}catch(e){
  _showErrorDialog("Could not share $e");
}
  }

  //Request Phone Permission
  Future<bool> _requestPhonePermission() async{
    var status = await Permission.phone.status;
   if(status.isDenied){
    status = await Permission.phone.request();
   }
   return status.isGranted;
  }

  //Show Error Dialog
  void _showErrorDialog(String message){
    showDialog(
        context: context,
        builder: (context)=> AlertDialog(
          title: const Text('Error'),
          content:  Text(message),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Ok'))
          ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Call , Sms and Share'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
           const Align(
             alignment: Alignment.topLeft,
               child: Text('Make a Phone Call',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            const SizedBox(height: 10,),
            TextField(
              controller: _phoneController,
              maxLines: 3,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.call),
                labelText: 'Phone Number',
                border: OutlineInputBorder(),
              ),
            ),
           const SizedBox(height: 10,),
            ElevatedButton.icon(
                onPressed: () async {
                   if(await _requestPhonePermission()){
                     if(_phoneController.text.isNotEmpty){
                       _makePhoneCall(_phoneController.text);
                     } else{
                        _showErrorDialog('Phone permission denied');
                     }
                   }
                },
                icon: const Icon(Icons.call),
                label: const Text("Make Call"),
            ),
            const SizedBox(height: 20,),

            const Align(
                alignment: Alignment.topLeft,
                child: Text('Send SMS',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            const SizedBox(height: 10,),
            TextField(
              controller: _smsController,
              maxLines: 3,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.message),
                labelText: 'Message',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton.icon(
              onPressed: (){
                if(_phoneController.text.isNotEmpty && _smsController.text.isNotEmpty){
                  _sendSms(_phoneController.text, _smsController.text);
                }
              },
              icon: const Icon(Icons.send),
              label: const Text("Send SMS"),
            ),
            const SizedBox(height: 20,),

            const Align(
                alignment: Alignment.topLeft,
                child:  Text('Share Content',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            const SizedBox(height: 10,),
            TextField(
              controller: _shareController,
              maxLines: 3,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.share),
                labelText: 'Content to Share',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton.icon(
              onPressed: (){
                if(_shareController.text.isNotEmpty){
                  _shareContent(_shareController.text);
                }
              },
              icon: const Icon(Icons.share),
              label: const Text("Share Content"),
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}



