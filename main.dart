import 'package:flutter/material.dart';
import 'package:my_shopping_app/Screens/HomeScreen/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Whatsapp',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: false,
          fontFamily: "Regular"
        ),
        home: Homescreen());
  }
}
