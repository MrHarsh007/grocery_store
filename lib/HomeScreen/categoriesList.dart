import 'package:flutter/material.dart';
import 'package:grocery_store/HomeScreen/productHomeScreen.dart';
import 'package:grocery_store/Reusable%20Component/custom_searchbar.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/main.dart';

import 'Models/dataModels.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({super.key});

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      appBar: AppBar(
        title: Text("Categories List",
            style: AppFonts.screenHeadingStyle(context)),
        titleSpacing: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: CustomSearchBar(controller: _searchController)),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(18.0), // Adjust the padding as needed
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 50.0,
                crossAxisSpacing: 30.0,
                mainAxisExtent: 80,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductHomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(217, 217, 217, 2),
                            blurRadius: 1,
                            offset: Offset(2.0, 4.0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Image.asset("assets/image/grocery.png"),
                      ),
                    ),
                  );
                },
                childCount: categories.length <= 6 ? categories.length : 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
