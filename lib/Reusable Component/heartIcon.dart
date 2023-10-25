import 'package:flutter/material.dart';
import 'package:grocery_store/main.dart';

class MyHeartIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color containerColor;
  final double padding;
  final double borderRadius;

  const MyHeartIcon({
    super.key,
    required this.icon,
    this.iconColor = kLightGreen,
    this.containerColor = const Color.fromARGB(31, 169, 166, 166),
    this.padding = 3,
    this.borderRadius = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        // color: containerColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }
}
