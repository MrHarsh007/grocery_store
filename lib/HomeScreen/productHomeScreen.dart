import 'package:flutter/material.dart';
import 'package:grocery_store/HomeScreen/widgets/productCard.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/main.dart';

import 'widgets/popularCategories.dart';

class ProductHomeScreen extends StatelessWidget {
  const ProductHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: appBarColor,
      body: ListView(children: [
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Text("Products for you",
              textAlign: TextAlign.start,
              style: AppFonts.headingStyle(context)),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: ProductCard(),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Text("Popular Categories",
              textAlign: TextAlign.start,
              style: AppFonts.headingStyle(context)),
        ),
        Container(
            // margin: EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const PopularCategories()),
        const SizedBox(
          height: 15,
        )
      ]),
    );
  }
}
