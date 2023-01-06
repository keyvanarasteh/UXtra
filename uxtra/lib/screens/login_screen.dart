// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:uxtra/widgets/appbar.dart';

import '../widgets/sign_in.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          appbar(),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Icon(Icons.ac_unit_sharp),
          ),
          //platform login button
          sign_in(),
          sign_in(),
          sign_in(),
          sign_in(),
        ],
      ),
    );
  }
}

