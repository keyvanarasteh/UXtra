// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uxtra/screens/home_screen.dart';
import 'package:uxtra/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Superword',
      debugShowCheckedModeBanner: false,
      routes: {
        '/login' :(context) => LoginScreen(),
        '/home' :(context) => HomeScreen(),
      },
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const HomeScreen(),
    );
  }
}

