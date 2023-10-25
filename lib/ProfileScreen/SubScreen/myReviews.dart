import 'package:flutter/material.dart';
import 'package:grocery_store/appFonts.dart';
import '../../main.dart';

class MyReviews extends StatefulWidget {
  const MyReviews({super.key});

  @override
  State<MyReviews> createState() => _MyReviewsState();
}

class _MyReviewsState extends State<MyReviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      appBar: AppBar(
        title: Text("My Reviews", style: AppFonts.screenHeadingStyle(context)),
        titleSpacing: 0,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: Image.network(
                                    // "assets/image/logo.png",
                                    "https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg"),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 1.8,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Apples",
                                      textAlign: TextAlign.start,
                                      overflow: TextOverflow.ellipsis,
                                      softWrap: true,
                                      maxLines: 1,
                                      style: AppFonts.getProductTitleStyle(
                                          context),
                                    ),
                                    Text(
                                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        softWrap: true,
                                        maxLines: 2,
                                        style:
                                            AppFonts.getProductDescriptionStyle(
                                                context)),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "₹70.00",
                                      style: AppFonts.getPriceStyle(context),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: kLightGreen,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Icon(Icons.verified_user),
                                        const SizedBox(
                                          width: 15,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.5,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Sachin Brahmbhatt",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                textAlign: TextAlign.start,
                                                style: AppFonts
                                                        .getProductTitleStyle(
                                                            context)
                                                    .copyWith(
                                                        color: Colors.white),
                                              ),
                                              Row(
                                                children: [
                                                  Text("4.5",
                                                      maxLines: 1,
                                                      style: AppFonts
                                                              .getPriceStyle(
                                                                  context)
                                                          .copyWith(
                                                              color: Colors
                                                                  .white)),
                                                  const Icon(
                                                    Icons.star_border_outlined,
                                                    color: Colors.white,
                                                    size: 22,
                                                  )
                                                ],
                                              ),
                                              Text(
                                                  "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  softWrap: true,
                                                  maxLines: 5,
                                                  style: AppFonts
                                                          .getProductDescriptionStyle(
                                                              context)
                                                      .copyWith(
                                                          color: Colors.white)),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
