import 'package:flutter/material.dart';
import 'package:my_shopping_app/Screens/Profile/profilescreen.dart';
import 'package:my_shopping_app/widgets/uihelper.dart';

// ignore: must_be_immutable
class OTPScreen extends StatelessWidget {
  String phonenumber;
  OTPScreen({required this.phonenumber});
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            UiHelper.CustomText(
                text: "Verifying your number",
                height: 20,
                color: Color(0XFF00A884),
                fontWeight: FontWeight.bold),
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomText(
                text: "you've tried to register +91$phonenumber", height: 15),
            UiHelper.CustomText(
                text: "recently. wait before requesting an sms or a call",
                height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: "with your code.", height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.CustomText(
                      text: "Wrong number?",
                      height: 15,
                      color: Color(0XFF00A884)),
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomContainer(otp1Controller),
                SizedBox(
                  height: 10,
                ),
                UiHelper.CustomContainer(otp2Controller),
                SizedBox(
                  height: 10,
                ),
                UiHelper.CustomContainer(otp3Controller),
                SizedBox(
                  height: 10,
                ),
                UiHelper.CustomContainer(otp4Controller),
                SizedBox(
                  height: 10,
                ),
                UiHelper.CustomContainer(otp5Controller),
                SizedBox(
                  height: 10,
                ),
                UiHelper.CustomContainer(otp6Controller),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomText(
                text: "Don't recieve code?",
                height: 15,
                color: Color(0XFF00A884),
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(callback: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileScreen()));
      }, buttonname: "Next", buttonName: 'h'),
      floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat,
    );
  }
}
