// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  final String first_title;
  final String text_message;
  final dynamic add_gif;
  const menu({
    Key? key,
    required this.first_title,
    required this.text_message,
    this.add_gif,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 8, right: 8, bottom: 8),
      child: Container(
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 44, 42, 42),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15, bottom: 20),
              child: Text(first_title,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
              ),
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20),
              child: Text(text_message,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 12,
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                height: 150,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.white38
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: add_gif,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
