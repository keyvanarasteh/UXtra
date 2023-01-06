// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  const menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 8, right: 8, bottom: 8),
      child: Container(
        height: 170,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 44, 42, 42),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 15, bottom: 20),
              child: Text("Business",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 17,
              ),
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("\$19",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                  ),
                  Text("/month",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: InkWell(
                onTap: () {
                  print("tıklandı");
                },
                child: Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white38
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Subscribe",
                    textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
