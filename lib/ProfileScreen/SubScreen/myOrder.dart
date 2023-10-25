import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:grocery_store/ProfileScreen/orderDetails.dart';
import 'package:grocery_store/Reusable%20Component/customTextField.dart';
import 'package:grocery_store/Reusable%20Component/custom_searchbar.dart';
import 'package:grocery_store/Reusable%20Component/orderFilterButton.dart';
import 'package:grocery_store/Reusable%20Component/ratingButton.dart';
import 'package:grocery_store/Reusable%20Component/ratingStar.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/main.dart';

class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      appBar: AppBar(
        title: Text("My Orders", style: AppFonts.screenHeadingStyle(context)),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Row(
                children: [
                  Flexible(
                      child: CustomSearchBar(controller: _searchController)),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: kLightGreen,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: GestureDetector(
                          onTap: () {
                            _showFilterBottomSheet(context);
                          },
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: kLightGreen,
                                borderRadius: BorderRadius.circular(12)),
                            child: Container(
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 2, color: Colors.white),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Icon(
                                Icons.filter_alt_outlined,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                          )),
                      // child: IconButton(
                      // onPressed: () {
                      //   _showFilterBottomSheet(context);
                      // },
                      //   icon: Container(
                      //     decoration: BoxDecoration(
                      //         border: Border.all(color: Colors.white, width: 2),
                      //         borderRadius: BorderRadius.circular(8)),
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(2.0),
                      // child: Icon(
                      //   Icons.filter_alt_outlined,
                      //   color: Colors.white,
                      // ),
                      //     ),
                      //   ),
                      // ),
                    ),
                  ),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 10,
                (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OrderDetails()));
                    },
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
                                height: 80,
                                width: 80,
                                child: Image.network(
                                  "https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg",
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 1.6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText("Delivered by 09th July",
                                        maxLines: 2,
                                        style: AppFonts.getProductTitleStyle(
                                            context)),
                                    AutoSizeText(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                        maxLines: 2,
                                        style:
                                            AppFonts.getProductDescriptionStyle(
                                                context)),
                                    GestureDetector(
                                      onTap: () =>
                                          _showRatingBottomSheet(context),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 4.0, bottom: 6),
                                        child: Text("Rate Product>>",
                                            overflow: TextOverflow.ellipsis,
                                            softWrap: true,
                                            maxLines: 2,
                                            style: AppFonts
                                                    .getProductDescriptionStyle(
                                                        context)
                                                .copyWith(color: kLightGreen)),
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

void _showFilterBottomSheet(BuildContext context) {
  int selectedRating = 0;
  String selectedStatus = '';
  RangeValues _values = const RangeValues(500, 200000);

  showModalBottomSheet(
    context: context,
    elevation: 0,
    backgroundColor: appBarColor,
    isScrollControlled: true,
    useSafeArea: true,
    constraints: BoxConstraints(
      maxHeight: MediaQuery.of(context).size.height / 1.6,
    ),
    builder: (BuildContext context) {
      int price = 1500;
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Padding(
            padding: const EdgeInsets.only(right: 18.0, left: 18, bottom: 22),
            child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.
                children: [
                  const SizedBox(height: 16),
                  Center(
                    child: Text(
                      "Order Filters",
                      style: AppFonts.getProductTitleStyle(context)
                          .copyWith(fontSize: 16),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Divider(
                      height: 1,
                      color: Colors.black,
                      indent: 90,
                      endIndent: 90,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "By Order Status",
                    style: AppFonts.getProductTitleStyle(context),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      OrderStatusButton(
                        status: "Pending",
                        isSelected: selectedStatus == "Pending",
                        onTap: () {
                          setState(() {
                            selectedStatus = "Pending";
                          });
                        },
                      ),
                      OrderStatusButton(
                        status: "Shipped",
                        isSelected: selectedStatus == "Shipped",
                        onTap: () {
                          setState(() {
                            selectedStatus = "Shipped";
                          });
                        },
                      ),
                      OrderStatusButton(
                        status: "Out for Delivery",
                        isSelected: selectedStatus == "Out for Delivery",
                        onTap: () {
                          setState(() {
                            selectedStatus = "Out for Delivery";
                          });
                        },
                      ),
                      OrderStatusButton(
                        status: "Delivered",
                        isSelected: selectedStatus == "Delivered",
                        onTap: () {
                          setState(() {
                            selectedStatus = "Delivered";
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "By Order Status",
                    style: AppFonts.getProductTitleStyle(context),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    alignment: WrapAlignment.start,
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      for (int rating = 5; rating >= 1; rating--)
                        RatingButton(
                          rating: rating,
                          isSelected: selectedRating == rating,
                          onTap: () {
                            setState(() {
                              selectedRating = rating;
                            });
                          },
                        )
                    ],
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "By Price range",
                    style: AppFonts.getProductTitleStyle(context),
                  ),
                  const SizedBox(height: 5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RangeSlider(
                        values: _values,
                        min: 500,
                        max: 200000,
                        divisions: (200000 - 500) ~/ 500,
                        labels: RangeLabels(
                          _values.start.toInt().toString(),
                          _values.end.toInt().toString(),
                        ),
                        activeColor: kLightGreen,
                        inactiveColor: Colors.white,
                        onChanged: (RangeValues values) {
                          setState(() {
                            _values = values;
                          });
                        },
                      ),
                      Text(
                        'Selected Range: ${_values.start.toInt()} - ${_values.end.toInt()}',
                        style: AppFonts.getProductTitleStyle(context),
                      ),
                    ],
                  ),
                ]),
          );
        },
      );
    },
  );
}

void _showRatingBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    elevation: 0,
    backgroundColor: appBarColor,
    isScrollControlled: true,
    useSafeArea: true,
    constraints: BoxConstraints(
      maxHeight: MediaQuery.of(context).size.height / 1.6,
    ),
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Padding(
            padding: const EdgeInsets.only(right: 18.0, left: 18, bottom: 22),
            child: Column(children: [
              const SizedBox(height: 16),
              Center(
                child: Text(
                  "Rate Product",
                  style: AppFonts.getProductTitleStyle(context)
                      .copyWith(fontSize: 16),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  height: 1,
                  color: Colors.black,
                  indent: 90,
                  endIndent: 90,
                ),
              ),
              const SizedBox(height: 15),
              RatingStar(),
              const SizedBox(height: 20),
              SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  constraints: const BoxConstraints(
                    maxHeight: 120, // Adjust the height as needed
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText:
                            "I will visit once more here..!! You must try this one.. It's a nice place..",
                        hintStyle: AppFonts.getProductTitleStyle(context)
                            .copyWith(overflow: TextOverflow.ellipsis),
                        // hintStyle: TextStyle(),
                        contentPadding:
                            const EdgeInsets.only(top: 10, left: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.black))),

                    keyboardType: TextInputType.multiline,
                    maxLines: 5,
                    // expands: true,
                    textAlign: TextAlign.start, // Align text to top left
                    textAlignVertical: TextAlignVertical.top,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () =>
                    showCustomSnackbar(context, "Done Button Clicked!"),
                child: Container(
                  decoration: BoxDecoration(
                    color: kLightGreen,
                    borderRadius: BorderRadius.circular(22),
                    // border: Border.all(color: Colors.white, width: 2),
                  ),
                  padding: const EdgeInsets.all(06),
                  child: Container(
                      decoration: BoxDecoration(
                        color: kLightGreen,
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: const Icon(
                        Icons.done,
                        color: Colors.white,
                      )),
                ),
              )
            ]),
          );
        },
      );
    },
  );
}
