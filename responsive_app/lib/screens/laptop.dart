import 'package:flutter/material.dart';

class Laptop extends StatefulWidget {
  const Laptop({super.key});

  @override
  State<Laptop> createState() => _LaptopState();
}

class _LaptopState extends State<Laptop> {
  @override
  Widget build(BuildContext context) {
   return Center(
     child: Container(
        child: Text("laptop"),
      ),
   );
  }
}