// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class sign_in extends StatelessWidget {
  final String platform_name;
  //final Image;

  const sign_in({
    Key? key,
    required this.platform_name,
    //required this.Image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          print("Tıklandı");
        },
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 56, 52, 52),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          height: 35,
          width: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(Icons.search),
                //Image,
              ),
              Text(
                platform_name,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
