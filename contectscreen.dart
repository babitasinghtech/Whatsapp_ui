import 'package:flutter/material.dart';
import 'package:my_shopping_app/widgets/uihelper.dart';

class ContactScreen extends StatelessWidget {
  var contactContent = [
    {
      "img":
          "https://img.freepik.com/free-photo/cheerful-young-caucasian-businessman_171337-727.jpg",
      "name": "Aaru",
      "status": "Avaliable for a reson",
    },
    {
      "img":
          "https://images.pexels.com/photos/3866555/pexels-photo-3866555.png?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "name": "Aarti",
      "status": "Busy"
    },
    {
      "img":
          "https://img.freepik.com/free-photo/young-handsome-business-man-with-laptop-office_1303-21060.jpg",
      "name": "Denial",
      "status": "Busy"
    },
    {
      "img":
          "https://media.istockphoto.com/id/629354648/photo/his-positivity-is-an-asset-to-the-company.jpg?s=612x612&w=0&k=20&c=iz5_zlDIt2IxmZAuJb2GVLrGM8IC-g6Y_j4g5OjBjuw=",
      "name": "Yuri",
      "status": "Busy"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(
            text: "Select Contect", height: 14, color: Colors.white),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){},icon: Icon(Icons.more_vert_sharp)),
            ],
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(contactContent[index]["img"].toString()),
            ),
            title: UiHelper.CustomText(text: contactContent[index]["name"].toString(), height: 16,fontWeight: FontWeight.bold,color: Color(0XFF000000)),
            subtitle: UiHelper.CustomText(text: contactContent[index]["status"].toString(), height:14 ),
      
        );
      },itemCount: contactContent.length,),
    );
  }
}
