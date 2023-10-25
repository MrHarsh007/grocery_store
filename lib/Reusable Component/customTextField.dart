import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final Widget? suffixIcon; // Allow a custom suffix icon

  const MyCustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.obscureText = false,
    this.suffixIcon, // Include a suffixIcon parameter
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 40, right: 40),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black54,
            width: 2.0,
          ),
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: TextField(
          cursorRadius: const Radius.circular(10),
          enableSuggestions: true,
          obscureText: obscureText,
          cursorColor: Colors.black,
          autocorrect: true,
          controller: controller,
          keyboardType: keyboardType,
          textAlign: TextAlign.start,
          showCursor: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 4),
            hintStyle: const TextStyle(
              fontSize: 12,
              letterSpacing: 2,
            ),
            suffixIcon: suffixIcon, // Include the suffixIcon here
          ),
        ),
      ),
    );
  }
}

void showCustomSnackbar(BuildContext context, String message,
    {Duration duration = const Duration(seconds: 2)}) {
  final snackbar = SnackBar(
    content: Text(message),
    duration: duration,
    // Add more properties as needed
  );
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

void showCustomAlertBox(
  BuildContext context,
  String description,
) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text("Alert!!",
            style: GoogleFonts.montserrat(
                fontSize: 14, fontWeight: FontWeight.w600)),
        content: Text(description,
            style: GoogleFonts.montserrat(
                fontSize: 10, fontWeight: FontWeight.w500)),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the alert box
            },
            child: const Text(
              'OK',
            ),
          ),
        ],
      );
    },
  );
}
