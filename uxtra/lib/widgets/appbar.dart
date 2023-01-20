 // ignore_for_file: prefer_const_constructors

 import 'dart:js';

import 'package:flutter/material.dart';
import 'package:uxtra/screens/login_screen.dart';

class appbar extends StatelessWidget {
  const appbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
    backgroundColor: Colors.transparent,
    leading: InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/home');
      },
      child: Icon(Icons.ac_unit_sharp)),
    //Image.asset("assets/images/logolong.png"),
    /* title: InkWell(
      onTap: () {
        print("tıklandı");
      },
      child: Text(
        "Pricing",
        style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontStyle: FontStyle.italic),
      ),
    ), */
    actions: [
      InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('/login');
          print("tıklandı");
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "Sign in",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ),
    ],
        );
  }
}