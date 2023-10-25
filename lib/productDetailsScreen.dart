import 'package:flutter/material.dart';
import 'package:grocery_store/Reusable%20Component/addToCartButton.dart';
import 'package:grocery_store/Reusable%20Component/buyNowButton.dart';
import 'package:grocery_store/Reusable%20Component/discountPercentage.dart';
import 'package:grocery_store/Reusable%20Component/heartIcon.dart';
import 'package:grocery_store/Reusable%20Component/vegIcon.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/main.dart';
import 'package:readmore/readmore.dart';

import 'HomeScreen/Models/dataModels.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  // Constructor to receive the selected Product
  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final String actualPrice = product.actualPrice.toString();
    final String price = product.price.toString();

    return Scaffold(
      appBar: AppBar(
          // leading: Icon(Icons.arrow_back_ios_new),
          ),
      backgroundColor: appBarColor,
      body: Stack(children: [
        Align(
          alignment: Alignment.topCenter,
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            // margin: const EdgeInsets.all(60),
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8.0),
          child: Align(
            alignment: Alignment.topRight,
            child: MyHeartIcon(icon: Icons.favorite_border),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height / 1.8,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    maxLines: 1,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: AppFonts.getProductTitleStyle(context)
                        .copyWith(fontSize: 16),
                  ),
                  Row(
                    children: [
                      Text(
                        "₹$price",
                        style: AppFonts.getPriceStyle(context),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "₹$actualPrice",
                        style: AppFonts.getActualPriceStyle(context),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      DiscountPercentageContainer(
                        text: "${product.discount}",
                      ),
                      const SizedBox(
                        width: 08,
                      ),
                      const VegIcon()
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 3.2,
                    child: ListView(
                      children: [
                        ReadMoreText(
                          product.description,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: 'Read more',
                          trimExpandedText: ' Read less',
                          textDirection: TextDirection.ltr,
                          colorClickableText: kLightGreen,
                          textAlign: TextAlign.start,
                          trimLines: 4,
                          style: AppFonts.getProductDescriptionStyle(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.4,
                    child: MyAddToCartButton(
                      text: "ADD TO",
                      iconAsset: "assets/image/cart.png",
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2.4,
                    child: MyBuyNowButton(
                      text: "BUY NOW",
                      onPressed: () {},
                    ),
                  ),
                ]),
          ),
        )
      ]),
    );
  }
}
