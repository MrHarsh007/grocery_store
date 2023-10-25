import 'package:flutter/material.dart';
import 'package:grocery_store/CartScreen/cartScreen.dart';
import 'package:grocery_store/registrationScreen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0, // Remove the shadow
      leadingWidth: 120,
      leading: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const RegistrationScreen()));
        },
        child: Image.asset(
          'assets/image/logo.png',
          // fit: BoxFit.cover,
          scale: 6,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CartScreen()));
              },
              child: Image.asset(
                'assets/image/cart.png',
                scale: 3,
              )), // Replace with your right logo
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
