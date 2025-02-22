import 'package:flutter/material.dart';

class MassagePage extends StatelessWidget {
  final List<String> messages;

  const MassagePage({super.key, required this.messages});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      reverse: true, // To display the latest message at the bottom
      itemCount: messages.length,
      itemBuilder: (context, index) {
        // Reverse the index to match the reverse order of ListView
        final reversedIndex = messages.length - 1 - index;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Align(
            alignment: reversedIndex % 2 == 0
                ? Alignment.centerRight
                : Alignment.centerLeft, // Alternate alignment
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: reversedIndex % 2 == 0 ? Colors.blue : Colors.grey[300],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Text(
                messages[reversedIndex],
                style: TextStyle(
                  color: reversedIndex % 2 == 0 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
