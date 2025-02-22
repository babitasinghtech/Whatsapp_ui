import 'package:flutter/material.dart';
import 'package:my_whatsapp_app/Screens/HomeScreen/ChatScreen/massage_page.dart';
import 'package:my_whatsapp_app/Screens/Profile/profilescreen.dart';
// Import the ProfilePage

class ChatDetailsPage extends StatefulWidget {
  const ChatDetailsPage({super.key});

  @override
  State<ChatDetailsPage> createState() => _ChatDetailsPageState();
}

class _ChatDetailsPageState extends State<ChatDetailsPage> {
  final TextEditingController _messageController = TextEditingController();
  final List<String> _messages = ["Hello!", "How are you?"]; // Example messages

  void _sendMessage() {
    if (_messageController.text.trim().isNotEmpty) {
      setState(() {
        _messages.add(_messageController.text.trim());
        _messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: GestureDetector(
          onTap: () {
            // Navigate to ProfilePage when the profile is tapped
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfilePage(
                  name: 'Aaditya',
                  imagePath: 'assets/images/Group 117.png',
                  status: 'Hey there! I am using WhatsApp.',
                ),
              ),
            );
          },
          child: Row(
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/Group 117.png'),
              ),
              SizedBox(width: 8.0),
              Text(
                'Aaditya',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.video_call),
            onPressed: () => print('Video call button clicked'),
          ),
          IconButton(
            icon: const Icon(Icons.call),
            onPressed: () => print('Call button clicked'),
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () => print('Menu button clicked'),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Display messages dynamically
            Expanded(
              child: MassagePage(messages: _messages),
            ),

            // Input field
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              color: Colors.grey[200],
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration: InputDecoration(
                        hintText: 'Type a message',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  IconButton(
                    onPressed: _sendMessage,
                    icon: const Icon(Icons.send, color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
