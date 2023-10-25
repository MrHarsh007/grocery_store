import 'package:flutter/material.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ShippingDetails extends StatelessWidget {
  const ShippingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shipping Details",
            style: AppFonts.screenHeadingStyle(context)),
        titleSpacing: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                        style: AppFonts.getProductDescriptionStyle(context),
                      ),
                      Text(
                        'Your order has been packed on july 08 at \n4:27 PM',
                        style: AppFonts.getProductDescriptionStyle(context),
                      ),
                    ],
                  ),
                ),
                afterLineStyle:
                    const LineStyle(color: Colors.green, thickness: 2.0),
                indicatorStyle: const IndicatorStyle(
                    color: Colors.green, height: 35.0, width: 15.0),
              ),
              TimelineTile(
                //isFirst: true,
                afterLineStyle:
                    const LineStyle(color: Colors.green, thickness: 2.0),
                beforeLineStyle:
                    const LineStyle(color: Colors.green, thickness: 2.0),
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
                        style: AppFonts.getProductDescriptionStyle(context),
                      ),
                      Text(
                        'Your order has been shipped on july 09 \nat 3:20 PM From Ahemdabad',
                        style: AppFonts.getProductDescriptionStyle(context),
                      ),
                      Text(
                        'Your order has been dispatched from july 09 \nat 3:20 PM Ahemdabad HUB',
                        style: AppFonts.getProductDescriptionStyle(context),
                      ),
                      Text(
                        'Your order has been arrived on july 09 \nat 3:20 PM Gandhinagar HUB',
                        style: AppFonts.getProductDescriptionStyle(context),
                      ),
                      Text(
                        'Your order has been arrived on july 09 \nat 3:20 PM Gandhinagar HUB',
                        style: AppFonts.getProductDescriptionStyle(context),
                      ),
                      Text(
                        'Your order has been arrived on july 09 \nat 3:20 PM Gandhinagar HUB',
                        style: AppFonts.getProductDescriptionStyle(context),
                      ),
                      Text(
                        'Your order has been arrived on july 09 \nat 3:20 PM Gandhinagar HUB',
                        style: AppFonts.getProductDescriptionStyle(context),
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
                        style: AppFonts.getProductDescriptionStyle(context),
                      ),
                      Text(
                        'Your order has been out for delivery on \njuly 12 at 8:16 AM',
                        style: AppFonts.getProductDescriptionStyle(context),
                      ),
                    ],
                  ),
                ),
                afterLineStyle:
                    const LineStyle(color: Colors.green, thickness: 2.0),
                beforeLineStyle:
                    const LineStyle(color: Colors.green, thickness: 2.0),
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
                        style: AppFonts.getProductDescriptionStyle(context),
                      ),
                      Text(
                        'Your order has been delivered on \njuly 12 at 3:33 PM',
                        style: AppFonts.getProductDescriptionStyle(context),
                      ),
                    ],
                  ),
                ),
                beforeLineStyle:
                    const LineStyle(color: Colors.green, thickness: 2.0),
                indicatorStyle: const IndicatorStyle(
                    color: Colors.green, height: 15.0, width: 15.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
