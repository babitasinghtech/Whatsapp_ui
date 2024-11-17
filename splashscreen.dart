import 'dart:async'; // Correct import for Timer

import 'package:flutter/material.dart';
import 'package:my_shopping_app/Screens/OnBoarding/onboardingscreen.dart';
import 'package:my_shopping_app/widgets/uihelper.dart'; // Assuming UiHelper is correctly defined

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    // After 3 seconds, navigate to another screen
    Timer(Duration(seconds: 3), () {
      // Add navigation logic here
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoardingscreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Icon.png"), // Ensure asset is declared in pubspec.yaml
            const SizedBox(height: 20),
            UiHelper.CustomText(
              text: "Whatsapp", 
              height: 18, 
              fontWeight: FontWeight.bold
            ),
          ],
        ),
      ),
    );
  }
}
