import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store/main.dart';

class AppFonts {
  static TextStyle getAppNameStyle(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).primaryColor,
    );
  }

  static TextStyle getSloganStyle(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      color: Colors.grey,
    );
  }

  static TextStyle getProductTitleStyle(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 12,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle getProductSubTitleStyle(BuildContext context) {
    return GoogleFonts.montserrat(
        fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white);
  }

  static TextStyle getProductDescriptionStyle(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 10,
      color: Colors.black87,
    );
  }

  static TextStyle getPriceStyle(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 13,
      fontWeight: FontWeight.w700,
      color: kLightGreen,
    );
  }

  static TextStyle getActualPriceStyle(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 12,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.lineThrough,
      color: Colors.black54,
    );
  }

  static TextStyle headingStyle(BuildContext context) {
    return GoogleFonts.montserrat(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    );
  }

  static TextStyle screenHeadingStyle(BuildContext context) {
    return GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w700);
  }
}
