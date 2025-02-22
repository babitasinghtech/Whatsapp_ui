import 'package:flutter/material.dart';
import 'package:my_whatsapp_app/Screens/HomeScreen/ChatScreen/chat_details_page.dart';
//import 'chat_details_page.dart'; // Import your ChatDetailsPage here

class HomeScreen extends StatelessWidget {
  // Sample chat list
  final List<Map<String, String>> chats = [
    {
      "name": "Aaditya",
      "lastMessage": "Hello, how are you?",
      "time": "5:45 PM",
      "avatar": "https://img.freepik.com/free-photo/artist-white_1368-3546.jpg",
    },
    {
      "name": "Vasu",
      "lastMessage": "Let's meet tomorrow.",
      "time": "4:30 PM",
      "avatar": "https://static.vecteezy.com/system/resources/thumbnails/026/497/734/small_2x/businessman-on-isolated-png.png",
    },
    {
      "name": "Karn",
      "lastMessage": "Good morning!",
      "time": "8:15 AM",
      "avatar": "https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chats"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(chat["avatar"]!),
            ),
            title: Text(
              chat["name"]!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(chat["lastMessage"]!),
            trailing: Text(chat["time"]!),
            onTap: () {
              // Navigate to ChatDetailsPage
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatDetailsPage(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
