import 'package:flutter/material.dart';
import 'package:my_whatsapp_app/Screens/OTP/otppage.dart';
import 'package:my_whatsapp_app/widgets/uihelper.dart';
import 'package:country_code_picker/country_code_picker.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  String countryDialCode = "+91"; // Default India code

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 80),
          Center(
            child: UiHelper.CustomText(
              text: "Enter your phone number",
              height: 20,
              color: Color(0XFF00A884),
              fontweight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          UiHelper.CustomText(
              text: "WhatsApp will need to verify your phone", height: 16),
          UiHelper.CustomText(
              text: "number. Carrier charges may apply.", height: 16),
          UiHelper.CustomText(
              text: "What’s my number?", height: 16, color: Color(0XFF00A884)),
          const SizedBox(height: 50),

          /// **Country Code Picker**
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              children: [
                CountryCodePicker(
                  onChanged: (country) {
                    setState(() {
                      countryDialCode = country.dialCode!;
                    });
                  },

                  initialSelection: 'IN', // Default country
                  favorite: const ['+91', 'IN'], // Favorite countries
                  showCountryOnly: false,
                  showOnlyCountryWhenClosed: false,
                  showFlag: true, // ✅ Show flag
                  showFlagMain: true, // ✅ Show flag in dropdown and main
                  showFlagDialog: true, // ✅ Show flag in selection dialog
                  flagWidth: 30, // Flag size
                  showDropDownButton: true, // ✅ Show dropdown arrow
                  alignLeft: false,
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          /// **Phone Number Input**
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 50,
                child: Text(
                  countryDialCode, // Shows selected country code
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 10),
              SizedBox(
                width: 250,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  controller: phoneController,
                  decoration: const InputDecoration(
                    hintText: "Enter phone number",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF00A884)),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),

      /// **Next Button**
      floatingActionButton: UiHelper.CustomButton(
        callback: () {
          login(phoneController.text.toString());
        },
        buttonname: "Next",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  /// **Login Function**
  void login(String phoneNumber) {
    if (phoneNumber.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Enter Phone Number"),
          backgroundColor: Color(0XFF00A884),
        ),
      );
    } else {
      String fullPhoneNumber = "$countryDialCode$phoneNumber";
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OTPScreen(phonenumber: fullPhoneNumber),
        ),
      );
    }
  }
}
