import 'package:flutter/material.dart';
import 'package:grocery_store/AppBar/appbar.dart';
import 'package:grocery_store/HomeScreen/widgets/categoriesCard.dart';
import 'package:grocery_store/HomeScreen/widgets/horizontalCard.dart';
import 'package:grocery_store/HomeScreen/widgets/productCard.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      appBar: const CustomAppBar(),
      body: ListView(primary: false, children: [
        const SizedBox(
          height: 15,
        ),
        const HorizontalCard(),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Text("Categories",
              textAlign: TextAlign.start,
              style: AppFonts.headingStyle(context)),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: const CategoriesScreen()),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Text("Products For You",
              textAlign: TextAlign.start,
              style: AppFonts.headingStyle(context)),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: const ProductCard()),
      ]),

      // body: ListView.builder(
      //   itemCount: 3, // Number of sections (horizontal grid and other content)
      //   itemBuilder: (context, sectionIndex) {
      //     if (sectionIndex == 0) {
      //       return const HorizontalCard();
      //     } else if (sectionIndex == 1) {
      //       return Padding(
      //         padding: EdgeInsets.symmetric(horizontal: 26, vertical: 08),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      // SizedBox(
      //   height: 15,
      // ),
      // Text(
      //   "Categories",
      //   textAlign: TextAlign.start,
      //   style: GoogleFonts.montserrat(
      //       fontWeight: FontWeight.w400, fontSize: 12),
      // ),
      // CategoriesScreen(),
      // SizedBox(
      //   height: 15,
      // ),
      //           ],
      //         ),
      //       );
      //     } else if (sectionIndex == 2) {
      //       return Padding(
      //         padding: EdgeInsets.symmetric(horizontal: 26, vertical: 08),
      //         child: SizedBox(
      //           height: 50,
      //           width: 50,
      //           child: ProductCard(),
      //         ),
      //       );
      //     }
      //   },
      // ),
    );
  }
}
