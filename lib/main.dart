import "package:flutter/material.dart";
import "package:flutter_application_1/_screen.dart";
import "package:flutter_application_1/phone_sms.dart";
import "package:flutter_application_1/widgets/Content%20Display%20Widgets/card.dart";
import "package:flutter_application_1/widgets/Feedback%20Widgets/alert_dialog.dart";
import "package:flutter_application_1/widgets/Feedback%20Widgets/snackbar.dart";
import "package:flutter_application_1/widgets/Feedback%20Widgets/tool_tip.dart";
import "package:flutter_application_1/widgets/Gesture%20and%20interation%20Widgets/draggable.dart";
import "package:flutter_application_1/widgets/Gesture%20and%20interation%20Widgets/gesture_detector.dart";
import "package:flutter_application_1/widgets/Gesture%20and%20interation%20Widgets/ink_well.dart";
import "package:flutter_application_1/widgets/Input%20Widgets/checkbox.dart";
import "package:flutter_application_1/widgets/Input%20Widgets/radio.dart";
import "package:flutter_application_1/widgets/Input%20Widgets/switch.dart";
import "package:flutter_application_1/widgets/Input%20Widgets/textfield.dart";
import "package:flutter_application_1/widgets/Layout%20Widgets/align.dart";
import "package:flutter_application_1/widgets/Layout%20Widgets/aspectratio.dart";
import "package:flutter_application_1/widgets/Layout%20Widgets/fittedbox.dart";
import "package:flutter_application_1/widgets/Layout%20Widgets/padding.dart";
import "package:flutter_application_1/widgets/Layout%20Widgets/stack.dart";
import "package:flutter_application_1/widgets/Navigation%20Widgets/bottomNav.dart";
import "package:flutter_application_1/widgets/Navigation%20Widgets/drawer.dart";
import "package:flutter_application_1/widgets/Navigation%20Widgets/pageview.dart";
import "image_picker.dart";
import "widgets/Navigation Widgets/tabbar.dart";

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light, primaryColor: Colors.deepPurple),
      home:  DrawerWidget(),
    );
  }
}