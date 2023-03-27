import 'package:flutter/material.dart';

class Large extends StatefulWidget {
  const Large({super.key});

  @override
  State<Large> createState() => _LargeState();
}

class _LargeState extends State<Large> {
  @override
  Widget build(BuildContext context) {
   return Center(
     child: Container(
        child: Text("large"),
      ),
   );
  }
}