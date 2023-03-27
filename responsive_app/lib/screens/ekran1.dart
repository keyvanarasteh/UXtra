import 'package:flutter/material.dart';
import 'package:responsive_app/screens/laptop.dart';
import 'package:responsive_app/screens/large.dart';

import 'mobile.dart';
import 'tablet.dart';

class Ekran1 extends StatefulWidget {
  const Ekran1({super.key});

  @override
  State<Ekran1> createState() => _Ekran1State();
}

class _Ekran1State extends State<Ekran1> {
  String deviceType = "phone";

  detectDevice(width) {
    if (width <= 400) {
      return "mobile";
    } else if (width <= 700) {
      return "tablet";
    } else if (width <= 900) {
      return "laptop";
    } else {
      return "large";
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    setState(() {
      deviceType = detectDevice(width);
    });

    switch (deviceType) {
      case ("mobile"):
        return Mobile();
      case ("tablet"):
        return Tablet();
      case ("laptop"):
        return Laptop();
      default:
        return Large();
    }
  }
}