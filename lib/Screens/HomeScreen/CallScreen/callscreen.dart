import 'package:flutter/material.dart';
import 'package:my_whatsapp_app/widgets/uihelper.dart';
//import 'package:my_shopping_app/widgets/uihelper.dart';

class CallsScreen extends StatelessWidget {
  var callContent = [
    {
      "name": "@Micheal",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHxzM_e4qVtnPZttfPhbjcPssC78WndotRPg&s",
      "calltime": "15 min ago"
    },
    {
      "name": "Deeksha",
      "img":
          "https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/short/linkedin-profile-picture-maker/dummy_image/thumb/004.webp",
      "calltime": "1 hr ago"
    },
    {
      "name": "Himani",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRynRdmqVvsum7gxwg3FMRPoN5PYi98pqz9rJQnN3CMma8P1h8SWahKJnNJEicb1bmXzbE&usqp=CAU",
      "calltime": "1 day ago"
    },
    {
      "name": "Aron",
      "img":
          "https://images.pexels.com/photos/14653174/pexels-photo-14653174.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "calltime": "2 day ago"
    },
    {
      "name": "Vaishali",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBPUFsetFISBGVLCbhz3RKlbgWY9r9Pf98CgOofQ6SKkIFNHrTtx9THnhzYrc1PLU3M3Q&usqp=CAU",
      "calltime": "2 day ago"
    },
    {
      "name": "Tilak",
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZkhJylWvJgj2g1J_O2lybZ0caR33T85SAuQ&s",
      "calltime": "5 day ago"
    }
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
                      fontweight: FontWeight.bold,
                      color: Colors.black),
                  subtitle: UiHelper.CustomText(
                      text: callContent[index]["calltime"].toString(),
                      height: 16),
                  trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.call,
                        color: Color(0XFF00A884),
                      )),
                );
              },
              itemCount: callContent.length,
            ),
          )
        ],
      ),
    );
  }
}
