import 'package:flutter/material.dart';
import 'package:grocery_store/HomeScreen/Models/dataModels.dart';
import 'package:grocery_store/HomeScreen/productList.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/main.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.builder(
          // physics: NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 08, horizontal: 12.0),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: categories.length - 1,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            // childAspectRatio: 1.2,
            mainAxisExtent: 120,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 30.0,
          ),
          itemBuilder: (context, index) {
            final category = categories[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductListScreen(category: category),
                  ),
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(217, 217, 217, 2),
                        blurRadius: 1,
                        // spreadRadius: 2.0,
                        offset: Offset(2.0, 4.0),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: Colors.white),
                // padding: const EdgeInsets.all(16.0),
                child: Stack(children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.network(
                          // "assets/image/logo.png"
                          category.imageUrl,
                          // fit: BoxFit.fill,
                        )),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                          color: kLightGreen,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0))),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            category.name,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            softWrap: true,
                            style: AppFonts.getProductSubTitleStyle(context),
                          )),
                    ),
                  )
                ]),
              ),
            );
          }),
    );
  }
}
