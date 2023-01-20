import 'dart:ui';

import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  final String title_name;
  final String mailorpassword;

  const textfield({
    Key? key,
    required this.title_name,
    required this.mailorpassword,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title_name,
        style: TextStyle(
          fontSize: 13,
        ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
            hintText: mailorpassword,
            focusedBorder: OutlineInputBorder(
             borderSide: BorderSide(
                color: Colors.orange.shade700,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
              color: Colors.grey.shade700,
              ),
            ),
            ),  
          ),
        )
      ]
    );
  }
}

