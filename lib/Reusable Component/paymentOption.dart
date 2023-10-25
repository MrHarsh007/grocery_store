import 'package:flutter/material.dart';
import 'package:grocery_store/appFonts.dart';

class PaymentOption extends StatelessWidget {
  final String image;
  final String text;

  const PaymentOption({
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset(image),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(text, style: AppFonts.getProductTitleStyle(context)),
              ],
            ),
            Icon(Icons.keyboard_double_arrow_right_rounded),
          ],
        ),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
