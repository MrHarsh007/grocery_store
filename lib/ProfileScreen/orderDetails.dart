import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store/ProfileScreen/SubScreen/shippingDetails.dart';
import 'package:grocery_store/Reusable%20Component/discountPercentage.dart';
import 'package:grocery_store/Reusable%20Component/priceDetails.dart';
import 'package:grocery_store/Reusable%20Component/vegIcon.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../main.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      appBar: AppBar(
        title:
            Text("Order Details", style: AppFonts.screenHeadingStyle(context)),
        titleSpacing: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                        physics: const ScrollPhysics(),
                        itemCount: 2,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 80,
                                    width: 80,
                                    child: Image.network(
                                        // "assets/image/logo.png",
                                        "https://5.imimg.com/data5/AK/RA/MY-68428614/apple.jpg"),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  SizedBox(
                                    width: 220,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Apples",
                                          style: AppFonts.getProductTitleStyle(
                                              context),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
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
                                          height: 5,
                                        ),
                                        const Row(
                                          children: [
                                            DiscountPercentageContainer(
                                                text: "50"),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            VegIcon()
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry...",
                                    textAlign: TextAlign.start,
                                    style: AppFonts.getProductDescriptionStyle(
                                        context),
                                  )),
                            ],
                          );
                        })),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Shipping Details",
                          style: AppFonts.headingStyle(context)),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 08),
                        child: Divider(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                      TimelineTile(
                        isFirst: true,
                        endChild: Container(
                          margin: const EdgeInsets.all(8),
                          constraints: const BoxConstraints(
                            maxHeight: 200,
                            minHeight: 0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Packed',
                                style: AppFonts.getProductTitleStyle(context),
                              ),
                              Text(
                                'July 08, 2023',
                                style: AppFonts.getProductDescriptionStyle(
                                    context),
                              ),
                              Text(
                                'Your order has been packed on july 08 at \n4:27 PM',
                                style: AppFonts.getProductDescriptionStyle(
                                    context),
                              ),
                            ],
                          ),
                        ),
                        afterLineStyle: const LineStyle(
                            color: Colors.green, thickness: 2.0),
                        indicatorStyle: const IndicatorStyle(
                            color: Colors.green, height: 35.0, width: 15.0),
                      ),
                      TimelineTile(
                        //isFirst: true,
                        afterLineStyle: const LineStyle(
                            color: Colors.green, thickness: 2.0),
                        beforeLineStyle: const LineStyle(
                            color: Colors.green, thickness: 2.0),
                        indicatorStyle: const IndicatorStyle(
                            color: Colors.green, height: 15.0, width: 15.0),

                        endChild: Container(
                          margin: const EdgeInsets.all(8),
                          constraints: const BoxConstraints(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Shipped',
                                style: AppFonts.getProductTitleStyle(context),
                              ),
                              Text(
                                'July 09, 2023',
                                style: AppFonts.getProductDescriptionStyle(
                                    context),
                              ),
                              Text(
                                'Your order has been shipped on july 09 \nat 3:20 PM From Ahemdabad',
                                style: AppFonts.getProductDescriptionStyle(
                                    context),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TimelineTile(
                        //isFirst: true,e
                        endChild: Container(
                          margin: const EdgeInsets.all(8),
                          constraints: const BoxConstraints(
                            maxHeight: 200,
                            minHeight: 0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Out for delivery',
                                style: AppFonts.getProductTitleStyle(context),
                              ),
                              Text(
                                'July 12, 2023',
                                style: AppFonts.getProductDescriptionStyle(
                                    context),
                              ),
                              Text(
                                'Your order has been out for delivery on \njuly 12 at 8:16 AM',
                                style: AppFonts.getProductDescriptionStyle(
                                    context),
                              ),
                            ],
                          ),
                        ),
                        afterLineStyle: const LineStyle(
                            color: Colors.green, thickness: 2.0),
                        beforeLineStyle: const LineStyle(
                            color: Colors.green, thickness: 2.0),
                        indicatorStyle: const IndicatorStyle(
                            color: Colors.green, height: 15.0, width: 15.0),
                      ),
                      TimelineTile(
                        isFirst: false,
                        isLast: true,
                        endChild: Container(
                          margin: const EdgeInsets.all(8),
                          constraints: const BoxConstraints(
                            maxHeight: 200,
                            minHeight: 0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Delivered',
                                style: AppFonts.getProductTitleStyle(context),
                              ),
                              Text(
                                'July 12, 2023',
                                style: AppFonts.getProductDescriptionStyle(
                                    context),
                              ),
                              Text(
                                'Your order has been delivered on \njuly 12 at 3:33 PM',
                                style: AppFonts.getProductDescriptionStyle(
                                    context),
                              ),
                            ],
                          ),
                        ),
                        beforeLineStyle: const LineStyle(
                            color: Colors.green, thickness: 2.0),
                        indicatorStyle: const IndicatorStyle(
                            color: Colors.green, height: 15.0, width: 15.0),
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ShippingDetails()));
                            },
                            child: Text(
                              "See all Details>>",
                              style: AppFonts.getProductTitleStyle(context)
                                  .copyWith(color: kLightGreen),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 15,
              ),
            ),
            const SliverToBoxAdapter(
                child: PriceDetails(
                    subtotalValue: "70",
                    taxValue: "20",
                    discountValue: "10",
                    totalValue: "80")),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(217, 217, 217, 2),
                          blurRadius: 1,
                          offset: Offset(4.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.download,
                            ),
                            AutoSizeText(
                              "Download Receipt",
                              textAlign: TextAlign.center,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w500,
                                color: kLightGreen,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
