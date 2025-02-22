import 'package:flutter/material.dart';

import 'package:my_whatsapp_app/widgets/uihelper.dart';

class ContactScreen extends StatelessWidget {
  var contactContent = [
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHxzM_e4qVtnPZttfPhbjcPssC78WndotRPg&s",
      "name": "@Micheal",
      "status": "Busy"
    },
    {
      "img":
          "https://images.pexels.com/photos/14653174/pexels-photo-14653174.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name": "Aron",
      "status": "Cool"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfpUuHpG0Q-s68nmubkBb5ofF4afgYUnPqp6g1SZZ21ECnVqKfTQcsBlU7Vj7oadeM0GA&usqp=CAU",
      "name": "Aron1",
      "status": "Cool"
    },
    {
      "img":
          "https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/short/linkedin-profile-picture-maker/dummy_image/thumb/004.webp",
      "name": "Deeksha",
      "status": "Make your Status."
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRm5neIweawXyvn_EBS18w9vWGXBGyZ7JezvAj4B8B87cbBAdRkNTD8edCHkMgf54ftaTk&usqp=CAU",
      "name": "Gautom",
      "status": "Time is Money"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRynRdmqVvsum7gxwg3FMRPoN5PYi98pqz9rJQnN3CMma8P1h8SWahKJnNJEicb1bmXzbE&usqp=CAU",
      "name": "Himani",
      "status": "Cool"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-umsu1C4DO2xO_Z8isFfp9jtATWzpm4s2RQ3HF9bZdHJ-45N8pBVWsUg0LNNCcmnnKPc&usqp=CAU",
      "name": "Himashu",
      "status": "Busy"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7Tz0vFKTsdAziG7ja-VB9C9J09KWZSdwvKH0dx2FtwqoyIP8wjLTD5qL4FkrYQjBtQCw&usqp=CAU",
      "name": "Mandal",
      "status": "Cool"
    },
    {
      "img":
          "https://www.catholicsingles.com/wp-content/uploads/2020/06/blog-header-3.png",
      "name": "Mayank",
      "status": "Cool"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiRi6KL2w1Asbatx9LXkiBvEw7D0Jfcc0j-VBhP5uo87ESz2tMm-BSiKldxNbnUX74HJY&usqp=CAU",
      "name": "Niru",
      "status": "Busy"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlMCxE_yXWxivqWbcTntqMyojkKwQJadqF_0X2KFDhy4gdKsuoGeSSUhbY8WS2goY-4HQ&usqp=CAU",
      "name": "Prakash",
      "status": "Cool"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT50nOkrI695cHqADJAQInFreXzS4f_5vr6kT_joJ3gUiRtzHNCRE30DOB68APlThaD6JM&usqp=CAU",
      "name": "Praveen",
      "status": "Cool"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmiww1CxF6GeLJ_GCIbF5D2sQtbJAxDrtMSt0OramURFXwh8HrD6PqS9Hoprw9Ns2wPTk&usqp=CAU",
      "name": "Rambo",
      "status": "Busy"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2022/09/08/15/16/cute-7441224_640.jpg",
      "name": "Ranveer",
      "status": "Cool"
    },
    {
      "img":
          "https://www.perfocal.com/blog/content/images/2021/01/Perfocal_17-11-2019_TYWFAQ_82_standard-3.jpg",
      "name": "Soniya",
      "status": "Cool"
    },
    {
      "img":
          "https://marketplace.canva.com/EAFHfL_zPBk/1/0/1600w/canva-yellow-inspiration-modern-instagram-profile-picture-kpZhUIzCx_w.jpg",
      "name": "Sanmurthi",
      "status": "Busy"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZkhJylWvJgj2g1J_O2lybZ0caR33T85SAuQ&s",
      "name": "Tilak",
      "status": "Cool"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBPUFsetFISBGVLCbhz3RKlbgWY9r9Pf98CgOofQ6SKkIFNHrTtx9THnhzYrc1PLU3M3Q&usqp=CAU",
      "name": "Vaishali",
      "status": "Cool"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(
            text: "Select Contact", height: 16, color: Colors.white),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp))
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  NetworkImage(contactContent[index]["img"].toString()),
            ),
            title: UiHelper.CustomText(
                text: contactContent[index]["name"].toString(),
                height: 16,
                fontweight: FontWeight.bold,
                color: Color(0XFF000000)),
            subtitle: UiHelper.CustomText(
                text: contactContent[index]["status"].toString(), height: 14),
          );
        },
        itemCount: contactContent.length,
      ),
    );
  }
}
