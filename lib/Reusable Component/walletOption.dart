import 'package:flutter/material.dart';

class WalletOption extends StatelessWidget {
  final String imagePath;
  final double size;

  const WalletOption({
    required this.imagePath,
    this.size = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(217, 217, 217, 2),
            blurRadius: 1,
            offset: Offset(2.0, 4.0),
          )
        ],
      ),
      height: size,
      width: size,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Image.asset(imagePath),
      ),
    );
  }
}
