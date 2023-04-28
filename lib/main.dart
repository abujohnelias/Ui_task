import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:progresso/progresso.dart';
import 'package:ui_task/view/screens/homescreen/homepage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
