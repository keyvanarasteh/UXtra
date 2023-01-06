import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  const textfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Email Address"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
            hintText: "Your email address",
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

