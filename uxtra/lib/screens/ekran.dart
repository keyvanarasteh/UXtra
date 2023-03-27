import 'package:flutter/material.dart';
import 'package:uxtra/screens/create_account_screen.dart';
import 'package:uxtra/screens/home_screen.dart';
import 'package:uxtra/screens/login_screen.dart';

class Ekran extends StatefulWidget {
  const Ekran({super.key});

  @override
  State<Ekran> createState() => _EkranState();
}

class _EkranState extends State<Ekran> {
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
        return HomeScreen();
      case ("tablet"):
        return CreateAccount();
      case ("laptop"):
        return LoginScreen();
      default:
        return HomeScreen();
    }
  }
}
