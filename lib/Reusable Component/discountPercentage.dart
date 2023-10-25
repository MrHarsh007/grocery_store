import 'package:flutter/material.dart';
import 'package:grocery_store/appFonts.dart';

import '../../main.dart';

class DiscountPercentageContainer extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;

  const DiscountPercentageContainer({
    required this.text,
    this.fontSize = 6,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: kLightGreen,
      ),
      child: Text("$text% off",
          style: AppFonts.getProductDescriptionStyle(context)
              .copyWith(fontSize: 8)),
    );
  }
}
