import 'package:flutter/material.dart';
import 'package:ice_cream/Pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ice Cream Store",
      home: Home(),
    );
  }
}
