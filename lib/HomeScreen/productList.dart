import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/Reusable%20Component/custom_searchbar.dart';
import 'package:grocery_store/Reusable%20Component/vegIcon.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/productDetailsScreen.dart';
import 'package:grocery_store/Reusable%20Component/addToCartButton.dart';
import 'package:grocery_store/Reusable%20Component/buyNowButton.dart';
import 'package:grocery_store/Reusable%20Component/discountPercentage.dart';
import 'package:grocery_store/main.dart';
import '../Reusable Component/heartIcon.dart';
import 'Models/dataModels.dart';

class ProductListScreen extends StatefulWidget {
  final Category category;

  const ProductListScreen({super.key, required this.category});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      appBar: AppBar(
        title: Text(widget.category.name,
            style: AppFonts.screenHeadingStyle(context)),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                  ),
                  child: CustomSearchBar(controller: _searchController)),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: widget.category.products.length,
                (context, index) {
                  final product = widget.category.products[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailScreen(product: product),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10.0,
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              SizedBox(
                                height: 120,
                                width: 100,
                                child: Stack(
                                  children: [
                                    const Align(
                                      alignment: Alignment.topLeft,
                                      child: MyHeartIcon(
                                        icon: Icons.favorite_outline,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 35.0),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Image.network(
                                          product.imageUrl,
                                          // scale: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 15),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 1.8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      product.name,
                                      maxLines: 1,
                                      style: AppFonts.getProductTitleStyle(
                                          context),
                                    ),
                                    Text(
                                      product.description,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      maxLines: 2,
                                      style:
                                          AppFonts.getProductDescriptionStyle(
                                              context),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "₹${product.price}",
                                          style:
                                              AppFonts.getPriceStyle(context),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          "₹${product.actualPrice}",
                                          style: AppFonts.getActualPriceStyle(
                                              context),
                                        ),
                                        const SizedBox(width: 8),
                                        DiscountPercentageContainer(
                                          text: "${product.discount}",
                                        ),
                                        const SizedBox(width: 5),
                                        const VegIcon(),
                                      ],
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 8,
                                        horizontal: 2,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          MyAddToCartButton(
                                            text: "ADD TO",
                                            iconAsset: "assets/image/cart.png",
                                            onPressed: () {},
                                          ),
                                          const SizedBox(width: 10),
                                          MyBuyNowButton(
                                            text: "BUY NOW",
                                            onPressed: () {},
                                            letterSpacing: 1.2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
