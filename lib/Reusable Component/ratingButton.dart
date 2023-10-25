import 'package:flutter/material.dart';
import 'package:grocery_store/main.dart';

class RatingButton extends StatelessWidget {
  final int rating;
  final bool isSelected;
  final VoidCallback onTap;

  RatingButton({
    required this.rating,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? kLightGreen : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: kLightGreen,
          ),
        ),
        child: Text(
          rating.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: isSelected ? Colors.white : kLightGreen,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
