import 'package:flutter/material.dart';

class VegIcon extends StatelessWidget {
  const VegIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(04),
          border: Border.all(
            color: Colors.green,
            width: 2,
          )),
      child: const Padding(
        padding: EdgeInsets.all(2.5),
        child: CircleAvatar(
          backgroundColor: Colors.green,
          radius: 2.5,
        ),
      ),
    );
  }
}
