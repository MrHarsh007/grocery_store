import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class MyAddToCartButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final Color buttonColor;
  final String iconAsset;
  final double letterSpacing;
  final VoidCallback onPressed;

  const MyAddToCartButton({
    required this.text,
    this.fontSize = 08,
    this.fontWeight = FontWeight.w500,
    this.textColor = Colors.white,
    this.buttonColor = kLightGreen,
    this.letterSpacing = 1,
    this.iconAsset = "assets/image/cart.png",
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
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: GoogleFonts.montserrat(
                  fontSize: fontSize,
                  letterSpacing: letterSpacing,
                  fontWeight: fontWeight,
                  color: textColor,
                ),
              ),
              SizedBox(
                height: 14,
                width: 18,
                child: Image.asset(
                  iconAsset,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
