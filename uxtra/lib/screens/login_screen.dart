// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:uxtra/widgets/appbar.dart';

import '../widgets/sign_in.dart';
import '../widgets/text_field.dart';

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
          //çizgi
          Divider(),
          //mail
          Container(
           decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          height: 100,
          width: 250,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(),
          ),
          ),
          //password
          Container(
           decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          height: 100,
          width: 250,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: textfield(),
          ),
          ),
          
        ],
      ),
    );
  }
}

