import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyPriceText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final bool showLineThrough;

  const MyPriceText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w100,
    this.showLineThrough = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      text,
      style: GoogleFonts.montserrat(
        color: color,
        decoration:
            showLineThrough ? TextDecoration.lineThrough : TextDecoration.none,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}
