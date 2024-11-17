import 'package:flutter/material.dart';
import 'package:my_shopping_app/Screens/OTP/otppage.dart';
import 'package:my_shopping_app/widgets/uihelper.dart';

class Loginscreen extends StatefulWidget {
  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedCountry = "India";
  List<String> countries = [
    "America",
    "Africa",
    "Canada",
    "Italy",
    "Germany",
    "India"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              UiHelper.CustomText(
                text: "Enter your phone number",
                height: 20,
                color: Color(0XFF00A884),
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 30),
              UiHelper.CustomText(
                text: "WhatsApp will need to verify your phone",
                height: 16,
              ),
              UiHelper.CustomText(
                text: "number. Carrier charges may apply",
                height: 16,
              ),
              UiHelper.CustomText(
                text: "What's My Number?",
                height: 16,
                color: Color(0XFF002AC0),
              ),
              SizedBox(height: 50),
              DropdownButtonFormField<String>(
                items: countries.map((String country) {
                  return DropdownMenuItem<String>(
                    value: country,
                    child: Text(country),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value!;
                  });
                },
                value: selectedCountry,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 40,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "+91",
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: SizedBox(
                      width: 250,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        controller: phoneController,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF00A884)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          callback: () {
            login(phoneController.text.toString());
          },
          buttonname: "Next", buttonName: 'j'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      // ignore: prefer_const_constructors
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Enter your phone number"),backgroundColor: Color(0XFF00A884)
      ));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => OTPScreen(phonenumber: phonenumber)));
    }
  }
}
