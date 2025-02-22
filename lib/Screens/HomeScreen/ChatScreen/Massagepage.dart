import 'package:flutter/material.dart';

class MassagePage extends StatefulWidget {
  const MassagePage({super.key, required List<String> messages});

  @override
  State<MassagePage> createState() => _MassagePageState();
}

class _MassagePageState extends State<MassagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Messages"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          // Date Indicator for 'Today'
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            alignment: Alignment.center,
            child: const Text(
              'Today',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.blueGrey),
            ),
          ),

          // Receiver's Message using Container
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              margin: const EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: const Text(
                'Hello, World!',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),

          // Sender's Message using Container
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              margin: const EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: const Text(
                'Hi, developer!',
                style: TextStyle(fontSize: 16.0),
                
              ),
            ),
          ),

          // Another Receiver's Message using Container
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              margin: const EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: const Text(
                'How are you doing?',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),

          // Another Sender's Message using Container
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.all(12.0),
              margin: const EdgeInsets.only(bottom: 10.0),
              decoration: BoxDecoration(
                color: Colors.blue[200],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: const Text(
                'I am doing great, thanks!',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),

          // Date Indicator for 'Tomorrow'
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            alignment: Alignment.center,
            child: const Text(
              'Tomorrow',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12, color: Colors.blueGrey),
            ),
          ),
        ],
      ),
    );
  }
}
