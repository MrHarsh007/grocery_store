import 'package:flutter/material.dart';
import 'package:grocery_store/HomeScreen/Models/dataModels.dart';
import 'package:grocery_store/Reusable%20Component/vegIcon.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/productDetailsScreen.dart';
import 'package:grocery_store/Reusable%20Component/buyNowButton.dart';
import 'package:grocery_store/Reusable%20Component/discountPercentage.dart';
import 'package:grocery_store/Reusable%20Component/heartIcon.dart';
import 'package:grocery_store/main.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2.85,
      child: GridView.builder(
        shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 08),
        scrollDirection: Axis.horizontal,
        itemCount: categories
            .firstWhere((category) => category.name == 'Features')
            .products
            .length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          // childAspectRatio: 1,
          mainAxisSpacing: 30.0,
          // crossAxisSpacing: 20.0,
        ),
        itemBuilder: (context, index) {
          final product = categories
              .firstWhere((category) => category.name == 'Features')
              .products[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(
                      product: categories
                          .firstWhere((category) => category.name == 'Features')
                          .products[index]),
                ),
              );
            },
            child: Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(217, 217, 217, 2),
                            blurRadius: 1,
                            // spreadRadius: 5.0,
                            offset: Offset(2.0, 4.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white),
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                DiscountPercentageContainer(
                                  text: "${product.discount}",
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const VegIcon()
                              ],
                            ),
                            const MyHeartIcon(
                              icon: Icons.favorite_border,
                            ),
                          ],
                        ),
                        GestureDetector(
                          child: Container(
                            height: 80,
                            width: 120,
                            // width: 200,
                            margin: const EdgeInsets.all(0),
                            child: Image.network(
                              product.imageUrl,
                              fit: BoxFit.fitWidth,

                              // scale: 4,
                            ),
                          ),
                        ),
                        Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                product.name,
                                style: AppFonts.getProductTitleStyle(context),
                              )),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Text(
                                  "₹${product.price}",
                                  style: AppFonts.getPriceStyle(context),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "₹${product.actualPrice}",
                                  style: AppFonts.getActualPriceStyle(context),
                                ),
                              ],
                            ),
                          ),
                        ]),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 40,
                                height: 35,
                                padding: const EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: kLightGreen),
                                child: Image.asset(
                                  "assets/image/cart.png",
                                  color: Colors.white,
                                  scale: 4,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              MyBuyNowButton(
                                text: "BUY NOW",
                                onPressed: () {},
                                fontSize: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
