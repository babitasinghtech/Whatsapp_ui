import 'package:flutter/material.dart';

class UiHelper {
  static CustomButton(
      {required VoidCallback callback, required String buttonname, required String buttonName}) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
        onPressed: () {
          callback();
        }, style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
        )),
        child: Text(
          buttonname,
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }

  static CustomText(
      {required String text,
      required double height,
      Color? color,
      FontWeight? fontWeight}) {
  
   return Text(
    text,
    style: TextStyle(
      fontSize: height,
      color: color ?? Color(0XFF5E5E5E),
        fontWeight: fontWeight
    ),
    );
  }
  static CustomContainer(TextEditingController controller){
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
      color: Color(0XFFD9D9D9)
      ),

      child: Padding(padding: const EdgeInsets.all(1.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none
        ),
      ),
      ),
    );
  }
}
