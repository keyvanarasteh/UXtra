// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, avoid_unnecessary_containers

import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          appbar(),
          //big title
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Pricing Plans",
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          //small text
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '''Start building for free, then add a site plan to go live. Account 
                          plans unlock additional features.''',
              style: TextStyle(fontSize: 15),
            ),
          ),
          //ay/yıl planı
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 44, 42, 42),
                borderRadius: BorderRadius.all(Radius.circular(7))
              ),
              height: 35,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
            ),
          ),
          //business,pro,free
          /* ListView(
            scrollDirection: Axis.horizontal,
            children: [
              menu(),
              menu(),
              menu(),
            ],
          ) */
          
        ],
      ),
    );
  }
}