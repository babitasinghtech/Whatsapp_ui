import 'package:flutter/material.dart';
import 'package:my_whatsapp_app/Screens/HomeScreen/Contects/contectscreen.dart';
import 'package:my_whatsapp_app/widgets/uihelper.dart';

class ChatsScreen extends StatelessWidget {
  var arrContent = [
    {
      "images":
          "https://images.pexels.com/photos/14653174/pexels-photo-14653174.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "Aron",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7"
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfpUuHpG0Q-s68nmubkBb5ofF4afgYUnPqp6g1SZZ21ECnVqKfTQcsBlU7Vj7oadeM0GA&usqp=CAU",
      "name": "Aron1",
      "lastmsg": "Flutter",
      "time": "06:45 am",
      "msg": "1"
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHxzM_e4qVtnPZttfPhbjcPssC78WndotRPg&s",
      "name": "@Michel",
      "lastmsg": "Flutter Batch is Starting",
      "time": "07:45 am",
      "msg": "2"
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBtnsm88r4237lJJBHuXNfnK_7iamt43CNDQ&s",
      "name": "Aruni",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7"
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBPUFsetFISBGVLCbhz3RKlbgWY9r9Pf98CgOofQ6SKkIFNHrTtx9THnhzYrc1PLU3M3Q&usqp=CAU",
      "name": "Vaishali",
      "lastmsg": "Flutter",
      "time": "06:45 am",
      "msg": "1"
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRynRdmqVvsum7gxwg3FMRPoN5PYi98pqz9rJQnN3CMma8P1h8SWahKJnNJEicb1bmXzbE&usqp=CAU",
      "name": "Himani",
      "lastmsg": "Flutter Batch is Starting",
      "time": "07:45 am",
      "msg": "2"
    },
    {
      "images":
          "https://www.catholicsingles.com/wp-content/uploads/2020/06/blog-header-3.png",
      "name": "Mayank",
      "lastmsg": "Lorem Ipsum",
      "time": "05:45 am",
      "msg": "7"
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7Tz0vFKTsdAziG7ja-VB9C9J09KWZSdwvKH0dx2FtwqoyIP8wjLTD5qL4FkrYQjBtQCw&usqp=CAU",
      "name": "Mandal",
      "lastmsg": "Flutter",
      "time": "06:45 am",
      "msg": "1"
    },
    {
      "images":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-umsu1C4DO2xO_Z8isFfp9jtATWzpm4s2RQ3HF9bZdHJ-45N8pBVWsUg0LNNCcmnnKPc&usqp=CAU",
      "name": "Himanshu",
      "lastmsg": "Flutter Batch is Starting",
      "time": "07:45 am",
      "msg": "2"
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
                        fontweight: FontWeight.bold),
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
                          radius: 8,
                          backgroundColor: Color(0XFF036A01),
                          child: UiHelper.CustomText(
                              text: arrContent[index]["msg"].toString(),
                              height: 12,
                              color: Color(0XFFFFFFFF)),
                        )
                      ],
                    ),
                  );
                },
                itemCount: arrContent.length,
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
            radius: 30,
            backgroundColor: Color(0XFF008665),
            child: Image.asset("assets/images/Group 19.png"),
          ),
        ));
  }
}
