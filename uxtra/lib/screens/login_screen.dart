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
          sign_in(
            platform_name: "Sign in with Google",
          ),
          sign_in(
            platform_name: "Sign in with Twitter",
          ),
          sign_in(
            platform_name: "Sign in with LinkedIn",
          ),
          sign_in(
            platform_name: "Sign in with Facebook",
          ),
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
            child: textfield(
              title_name: "Email Address",
              mailorpassword: "Your email address",
            ),
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
            child: textfield(
              title_name: "Password",
              mailorpassword: "Your password",
            ),
          ),
          ),
          //sign in button
          Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 56, 52, 52),
            borderRadius: BorderRadius.all(Radius.circular(5))
          ),
          height: 35,
          width: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child:  Text("Sign in",
              style: TextStyle(
                fontSize: 12,
              ),
              ),
              ),
             
            ],
          ),
        ),
        ],
      ),
    );
  }
}

