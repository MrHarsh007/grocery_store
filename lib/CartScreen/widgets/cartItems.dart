import 'package:flutter/material.dart';
import 'package:grocery_store/Reusable%20Component/discountPercentage.dart';
import 'package:grocery_store/Reusable%20Component/vegIcon.dart';
import 'package:grocery_store/appFonts.dart';

class CartIteams extends StatelessWidget {
  const CartIteams({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cart Iteams",
                        style: AppFonts.headingStyle(context),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        height: 1,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ListView.builder(
                        physics: const ScrollPhysics(),
                        itemCount: 2,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.network(
                                        // "assets/image/logo.png",
                                        "https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg"),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 22, left: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Apples",
                                            maxLines: 1,
                                            style:
                                                AppFonts.getProductTitleStyle(
                                                    context)),
                                        Row(
                                          children: [
                                            Text(
                                              "₹70.00",
                                              style: AppFonts.getPriceStyle(
                                                  context),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              "₹90.00",
                                              style:
                                                  AppFonts.getActualPriceStyle(
                                                      context),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        const Row(
                                          children: [
                                            DiscountPercentageContainer(
                                                text: "50"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            VegIcon(),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.8,
                                          child: Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                                            maxLines: 2,
                                            textDirection: TextDirection.ltr,
                                            overflow: TextOverflow.ellipsis,
                                            style: AppFonts
                                                .getProductDescriptionStyle(
                                                    context),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Divider(
                                height: 1,
                                indent: 30,
                                endIndent: 30,
                                color: Colors.black,
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
