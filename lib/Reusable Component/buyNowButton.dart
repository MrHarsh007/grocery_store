import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store/main.dart';

class MyBuyNowButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final Color buttonColor;
  final double letterSpacing;
  final VoidCallback onPressed;

  const MyBuyNowButton({
    required this.text,
    this.letterSpacing = 1,
    this.fontSize = 08,
    this.fontWeight = FontWeight.w500,
    this.textColor = kLightGreen,
    this.buttonColor = Colors.white,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(217, 217, 217, 2),
            blurRadius: 1,
            offset: Offset(4.0, 2.0),
          )
        ],
        borderRadius: BorderRadius.circular(10),
        color: buttonColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GestureDetector(
          onTap: onPressed,
          child: Text(
            text,
            textAlign: TextAlign.center,
            softWrap: true,
            style: GoogleFonts.montserrat(
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
