import 'package:flutter/material.dart';
import 'package:my_shopping_app/Screens/Login/loginscreen.dart';
import 'package:my_shopping_app/widgets/uihelper.dart';

class OnBoardingscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsapp logo.png"),
            SizedBox(height: 40),
            UiHelper.CustomText(
              text: "Welcome to Whatsapp",
              height: 20,
              color: Color(0XFF000000),
            ),
            SizedBox(height: 20), // Add some spacing between texts
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "Read our ", height: 14),
                UiHelper.CustomText(
                  text: "Privacy Policy",
                  height: 14,
                  color: Color(0XFF0C42CC),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(
                    text: "Tap ''Agree And Continue'' ", height: 14),
                UiHelper.CustomText(
                  text: "to accept the ",
                  height: 14,
                ),
                UiHelper.CustomText(
                  text: "Terms of Service",
                  height: 14,
                  color: Color(0XFF0C42CC),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Loginscreen()));
        },
        buttonname: "Agree and Continue", buttonName: 'm',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
