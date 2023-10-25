import 'package:flutter/material.dart';
import 'package:grocery_store/HomeScreen/Models/dataModels.dart';
import 'package:grocery_store/HomeScreen/categoriesList.dart';
import 'package:grocery_store/appFonts.dart';
import '../productHomeScreen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<String> imageAssetPaths = [
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
    "assets/image/coldrinks.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: GridView.builder(
              primary: false,
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              padding:
                  const EdgeInsets.symmetric(vertical: 08, horizontal: 12.0),
              //scrollDirection: Axis.horizontal,
              itemCount: categories.length <= 6 ? categories.length : 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  // childAspectRatio: 1,
                  mainAxisSpacing: 60.0,
                  crossAxisSpacing: 18.0,
                  mainAxisExtent: 80),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductHomeScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(217, 217, 217, 2),
                            blurRadius: 1,
                            // spreadRadius: 5.0,
                            offset: Offset(2.0, 4.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Image.asset("assets/image/grocery.png"),
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned(
            bottom: 0,
            right: 10,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CategoriesList()));
              },
              child: Text("View all >>",
                  // textAlign: TextAlign.center,
                  style: AppFonts.getProductDescriptionStyle(context)),
            ),
          ),
        ],
      ),
    );
  }
}
