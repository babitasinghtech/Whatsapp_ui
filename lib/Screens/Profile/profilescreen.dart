import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String imagePath;
  final String status;

  const ProfilePage({
    super.key,
    required this.name,
    required this.imagePath,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 16),
          Text(
            name,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            status,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          const SizedBox(height: 20),
          // Additional Details
          const Divider(),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text('Phone'),
            subtitle: const Text('+1234567890'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('Email'),
            subtitle: const Text('aaditya@example.com'),
          ),
        ],
      ),
    );
  }
}
