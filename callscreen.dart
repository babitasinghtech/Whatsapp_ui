import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:my_shopping_app/widgets/uihelper.dart';

// ignore: must_be_immutable
class CallScreen extends StatelessWidget {
  var callContent = [
    {
      "name": "Sanmika",
      "img":
          "https://thumbs.dreamstime.com/z/close-up-portrait-friendly-lovely-smiling-happy-curly-redhead-woman-yellow-sweater-tilt-head-silly-grinning-close-up-169678378.jpg",
      "calltime": "15 min ago",
    },
    {
      "name": "Harry",
      "img":
          "https://media.istockphoto.com/id/1344874415/photo/shot-of-a-young-businessman-showing-thumbs-up-while-using-a-laptop-at-a-conference.webp?b=1&s=612x612&w=0&k=20&c=kji8AYgrH0zU0F9IXoovNhy3xR1CJ1eszJVt4K-ymHc=",
      "calltime": "18 min ago",
    },
    {
      "name": "Sanmika",
      "img":
          "https://thumbs.dreamstime.com/z/close-up-portrait-friendly-lovely-smiling-happy-curly-redhead-woman-yellow-sweater-tilt-head-silly-grinning-close-up-169678378.jpg",
      "calltime": "30 min ago",
    },
    {
      "name": "Michel",
      "img":
          "https://image.shutterstock.com/image-photo/happy-young-latin-business-man-260nw-2335932681.jpg",
      "calltime": "3 hour  ago",
    },
    {
      "name": "Michel",
      "img":
          "https://image.shutterstock.com/image-photo/happy-young-latin-business-man-260nw-2335932681.jpg",
      "calltime": "8 hour ago",
    },
    {
      "name": "Sanmika",
      "img":
          "https://thumbs.dreamstime.com/z/close-up-portrait-friendly-lovely-smiling-happy-curly-redhead-woman-yellow-sweater-tilt-head-silly-grinning-close-up-169678378.jpg",
      "calltime": "8 hour ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(text: "Recent", height: 18),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        NetworkImage(callContent[index]["img"].toString()),
                  ),
                  title: UiHelper.CustomText(
                    text: callContent[index]["name"].toString(),
                    height: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  subtitle: UiHelper.CustomText(
                    text: callContent[index]["calltime"].toString(),
                    height: 16,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.call,
                      color: Color(0XFF00A884),
                    ),
                  ),
                );
              },
              itemCount: callContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
