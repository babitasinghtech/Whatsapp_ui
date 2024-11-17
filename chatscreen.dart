import 'package:flutter/material.dart';
import 'package:my_shopping_app/Screens/HomeScreen/Contects/contectscreen.dart';
import 'package:my_shopping_app/widgets/uihelper.dart';

// ignore: must_be_immutable
class ChatScreen extends StatelessWidget {
  var arrContent = [
    {
      "images":
          "https://media.istockphoto.com/id/661799106/photo/portrait-of-a-young-french-man.jpg?s=612x612&w=0&k=20&c=M-8ccbYQZCvQWmKLLyDF5mYjF3KaBTQwX6HDdzvw_pk=",
      "name": "Aaditya",
      "lastmsg": "byy",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images":
          "https://static.vecteezy.com/system/resources/thumbnails/026/497/734/small_2x/businessman-on-isolated-png.png",
      "name": "vasu",
      "lastmsg": "noting will happen",
      "time": "09:05 am",
      "msg": "1",
    },
    {
      "images":
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "name": "karn",
      "lastmsg": "Good morning dude",
      "time": "05:05 am",
      "msg": "1",
    },
    {
      "images":
          "https://media.istockphoto.com/id/661799106/photo/portrait-of-a-young-french-man.jpg?s=612x612&w=0&k=20&c=M-8ccbYQZCvQWmKLLyDF5mYjF3KaBTQwX6HDdzvw_pk=",
      "name": "Aaditya",
      "lastmsg": "byy",
      "time": "05:45 am",
      "msg": "7",
    },
    {
      "images":
          "https://static.vecteezy.com/system/resources/thumbnails/026/497/734/small_2x/businessman-on-isolated-png.png",
      "name": "vasu",
      "lastmsg": "noting will happen",
      "time": "09:05 am",
      "msg": "1",
    },
    {
      "images":
          "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
      "name": "karn",
      "lastmsg": "Good morning dude",
      "time": "05:05 am",
      "msg": "1",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: arrContent.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage:
                          NetworkImage(arrContent[index]["images"].toString()),
                    ),
                    title: UiHelper.CustomText(
                        text: arrContent[index]["name"].toString(),
                        height: 14,
                        fontWeight: FontWeight.bold),
                    subtitle: UiHelper.CustomText(
                        text: arrContent[index]["lastmsg"].toString(),
                        height: 13,
                        color: Color(0XFF889095)),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UiHelper.CustomText(
                            text: arrContent[index]["time"].toString(),
                            height: 12,
                            color: Color(0XFF026500)),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0XFF036A01),
                          child: UiHelper.CustomText(
                            text: arrContent[index]["msg"].toString(),
                            height: 12,
                            color: Color(0XFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        floatingActionButton: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ContactScreen()));
          },
          child: CircleAvatar(
            radius: 28,
            backgroundColor: Color(0XFF008665),
            child: Image.asset("assets/images/Group 19.png"),
          ),
        ));
  }
}
