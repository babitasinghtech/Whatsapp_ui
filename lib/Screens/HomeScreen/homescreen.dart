import 'package:flutter/material.dart';
import 'package:my_whatsapp_app/Screens/HomeScreen/CallScreen/callscreen.dart';
import 'package:my_whatsapp_app/Screens/HomeScreen/Camera/camerascreen.dart';
import 'package:my_whatsapp_app/Screens/HomeScreen/ChatScreen/chat_details_page.dart';
import 'package:my_whatsapp_app/Screens/HomeScreen/ChatScreen/chatscreen.dart';
import 'package:my_whatsapp_app/Screens/HomeScreen/Status/statusscreen.dart';
import 'package:my_whatsapp_app/widgets/uihelper.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: const [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              )
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 100,
          title: UiHelper.CustomText(
              text: "WhatsApp",
              height: 20,
              color: Colors.white,
              fontweight: FontWeight.bold),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Image.asset("assets/images/Search.png")),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp))
          ],
        ),
        body: TabBarView(children: [
          CameraScreen(),
          ChatsScreen(),
          StatusScreen(),
          CallsScreen(),
          ChatDetailsPage(),
        ]),
      ),
    );
  }
}
