import 'package:flutter/material.dart';
import 'package:grocery_store/main.dart';

class OrderStatusButton extends StatelessWidget {
  final String status;
  final bool isSelected;
  final VoidCallback onTap;

  OrderStatusButton({
    required this.status,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: isSelected ? kLightGreen : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: kLightGreen,
          ),
        ),
        child: Text(
          status,
          style: TextStyle(
            fontSize: 14,
            color: isSelected ? Colors.white : kLightGreen,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
