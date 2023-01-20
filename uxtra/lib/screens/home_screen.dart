// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_print, avoid_unnecessary_containers

import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/menu.dart';

class HomeScreen extends StatelessWidget {
  final bool isSelected;
  const HomeScreen({
    super.key, 
    this.isSelected = false,
    });
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          appbar(),
          //big title
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Pricing Plans",
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ),
          //small text
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '''Start building for free, then add a site plan to go live. Account 
                            plans unlock additional features.''',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          //ay/yıl planı
          Expanded(
            flex: 1,
            child: Padding(
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
                      child: InkWell(
                        onTap: () {
                          isSelected: true;
                          print("tıklandı");
                        },
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              print("Tıklandı");
                            },
                            child: Text(
                              "Monthly billing",
                              style: TextStyle(color: isSelected ? Color.fromARGB(255, 2, 45, 94) : Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          print("tıklandı");
                        },
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              isSelected: true;
                            },
                            child: Text(
                              "Yearly billing",
                              style: TextStyle(color: isSelected ? Color.fromARGB(255, 2, 45, 94) : Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //business,pro,free
          Expanded(
            flex: 6,
            child: ListView(

              scrollDirection: Axis.vertical,
              children: [
                menu(
                  first_title: "Unlock Your Writing Potential with AI",
                  text_message: 
                  '''Use the Power of AI to Enhance Your Writing Every Day and Unlock Your Creativity and Imagination''',
                ),
                menu(
                  first_title: "Adapt Texts to Any Situation Quickly and Easily",
                  text_message: 
                  '''Instantly Change the Tone of Your Writing to Suit Any Situation or Occasion''',
                ),
                menu(
                  first_title: "Correct, Summarize & Expand any text with a click",
                  text_message: 
                  '''Quickly edit text to get the perfect length and clarity, saving time and ensuring accuracy.''',
                ),

                
              ],
            ),
          )
          
        ],
      ),
    );
  }
}

