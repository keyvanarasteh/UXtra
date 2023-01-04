// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, avoid_unnecessary_containers

import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            leading: Icon(Icons.ac_unit_sharp),
            title: InkWell(
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
            ),
            actions: [
              InkWell(
                onTap: () {
                  print("tıklandı");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "sign in",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
            ],
          ),
          //big text
          Text(
            "Pricing Plans",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          //small text
          Text(
            '''Start building for free, then add a site plan to go live. 
          Account plans unlock additional features.''',
            style: TextStyle(fontSize: 15),
          ),
          //ay/yıl planı
          Container(
            color: Colors.black,
            height: 30,
            width: 180,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        print("Tıklandı");
                      },
                      child: Text(
                        "Monthly billing",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        print("Tıklandı");
                      },
                      child: Text(
                        "Yearly billing",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
