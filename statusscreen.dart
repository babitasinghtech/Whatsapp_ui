import 'package:flutter/material.dart';
import 'package:my_shopping_app/widgets/uihelper.dart';

// ignore: must_be_immutable
class StatusScreen extends StatelessWidget {
  var statusContent = [
    {
      "img":
          "https://image.shutterstock.com/image-photo/happy-young-latin-business-man-260nw-2335932681.jpg",
      "name": "Michel",
      "statustime": "15 min ago",
    },
    {
      "img":
          "https://media.istockphoto.com/id/1344874415/photo/shot-of-a-young-businessman-showing-thumbs-up-while-using-a-laptop-at-a-conference.webp?b=1&s=612x612&w=0&k=20&c=kji8AYgrH0zU0F9IXoovNhy3xR1CJ1eszJVt4K-ymHc=",
      "name": "Harry",
      "statustime": "45 min ago",
    },
    {
      "img":
          "https://thumbs.dreamstime.com/z/close-up-portrait-friendly-lovely-smiling-happy-curly-redhead-woman-yellow-sweater-tilt-head-silly-grinning-close-up-169678378.jpg",
      "name": "Sanmika",
      "statustime": "1 hour ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              UiHelper.CustomText(
                  text: "Status", height: 20, fontWeight: FontWeight.bold)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Stack(
                //ak widget ko dusre k uper overlap krwano ho tb ise use krte hai
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-social-media-user-image-182145777.jpg"),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Color(0XFF008069),
                      child: Center(
                          child: Icon(
                        Icons.add,
                        color: Color(0XFFFFFFFF),
                        size: 15,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            title: UiHelper.CustomText(text: "My Status", height: 20),
            subtitle: UiHelper.CustomText(
                text: "Tap to add status update", height: 15),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UiHelper.CustomText(text: "Recent updates", height: 15),
                Icon(
                  Icons.arrow_drop_down,
                  color: Color(0XFF5E5E5E),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(statusContent[index]["img"].toString()),
                  ),
                  title: UiHelper.CustomText(
                      text: statusContent[index]["name"].toString(),
                      height: 16,
                      fontWeight: FontWeight.bold),
                  subtitle: UiHelper.CustomText(
                      text: statusContent[index]["statustime"].toString(),
                      height: 14),
                );
              },
              itemCount: statusContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
