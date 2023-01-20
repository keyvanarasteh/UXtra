// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:uxtra/widgets/appbar.dart';

import '../widgets/sign_in.dart';
import '../widgets/text_field.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          appbar(),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Icon(Icons.ac_unit_sharp),
          ),
          //login to superword title
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Create an account",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          //try for free text
           Padding(
             padding: const EdgeInsets.only(bottom: 20.0),
             child: Text("Try for free",
               style: TextStyle(
                 fontSize: 12,
                 color: Colors.grey,
               ),
             ),
           ),
          //platform login button
          sign_in(
            platform_name: "Sign in with Google",
            //Image: Image.asset("/assets/images/google.png",),
          ),
          sign_in(
            platform_name: "Sign in with Twitter",
            //Image: Image.asset("/assets/images/twitter.png"),
          ),
          sign_in(
            platform_name: "Sign in with LinkedIn",
            //Image: Image.asset("/assets/images/linkedin.png"),
          ),
          sign_in(
            platform_name: "Sign in with Facebook",
            //Image: Image.asset("/assets/images/facebook.png"),
          ),
          //çizgi
          /* Divider(), */
          //mail
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
             decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            height: 100,
            width: 250,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: textfield(
                title_name: "Email Address",
                mailorpassword: "Your email address",
              ),
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
            padding: const EdgeInsets.all(2.0),
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
                child:  Text("Get Started",
              style: TextStyle(
                fontSize: 12,
              ),
              ),
              ),
             
            ],
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                  ),),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/login');
                      print("tıklandı");
                    },
                    child: Text("Sign in",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                    ),),
                  ),
                ],
              ),
            ),
          ],
        )
        ],
      ),
    );
  }
}

