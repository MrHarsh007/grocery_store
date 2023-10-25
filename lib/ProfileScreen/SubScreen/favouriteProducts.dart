import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/Reusable%20Component/custom_searchbar.dart';
import 'package:grocery_store/Reusable%20Component/heartIcon.dart';
import 'package:grocery_store/appFonts.dart';
import '../../Reusable Component/addToCartButton.dart';
import '../../Reusable Component/buyNowButton.dart';
import '../../Reusable Component/discountPercentage.dart';
import '../../Reusable Component/vegIcon.dart';
import '../../main.dart';

class MyFavouriteProducts extends StatefulWidget {
  const MyFavouriteProducts({super.key});

  @override
  State<MyFavouriteProducts> createState() => _MyFavouriteProductsState();
}

class _MyFavouriteProductsState extends State<MyFavouriteProducts> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      appBar: AppBar(
        title: Text("Favourite products",
            style: AppFonts.screenHeadingStyle(context)),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: CustomSearchBar(controller: _searchController)),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 7,
                (context, index) {
                  return GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
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
                                        icon: Icons.favorite_rounded,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Image.network(
                                          "https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg",
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
                                      "Apple",
                                      maxLines: 1,
                                      style: AppFonts.getProductTitleStyle(
                                          context),
                                    ),
                                    Text(
                                      "Energize your day with the natural goodness of our premium bananas. Bursting with essential nutrients and delectable flavor, these bananas are a timeless snack that delights your taste buds and nourishes your body. Our bananas are hand-picked at the peak of ripeness to ensure their signature sweetness and velvety texture. They are a rich source of potassium, vitamin C, and vitamin B6, providing you with a healthy boost of energy and supporting heart health...',",
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
                                          "₹80",
                                          style:
                                              AppFonts.getPriceStyle(context),
                                        ),
                                        const SizedBox(width: 8),
                                        Text(
                                          "₹100",
                                          style: AppFonts.getActualPriceStyle(
                                              context),
                                        ),
                                        const SizedBox(width: 8),
                                        DiscountPercentageContainer(
                                          text: "10",
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
