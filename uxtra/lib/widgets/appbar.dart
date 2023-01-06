 // ignore_for_file: prefer_const_constructors

 import 'package:flutter/material.dart';
import 'package:uxtra/screens/login_screen.dart';

AppBar appbar() {
    return AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.ac_unit_sharp),
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