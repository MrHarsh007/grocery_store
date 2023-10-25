import 'package:flutter/material.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/main.dart';

class PriceDetails extends StatelessWidget {
  final String subtotalValue;
  final String taxValue;
  final String discountValue;
  final String totalValue;

  const PriceDetails({
    required this.subtotalValue,
    required this.taxValue,
    required this.discountValue,
    required this.totalValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Price Details", style: AppFonts.headingStyle(context)),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 08),
              child: Divider(
                height: 1,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Subtotal", style: AppFonts.getProductTitleStyle(context)),
                Text("₹$subtotalValue",
                    style: AppFonts.getPriceStyle(context)
                        .copyWith(color: Colors.black54))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tax (GST)",
                  style: AppFonts.getProductTitleStyle(context),
                ),
                Text("₹$taxValue",
                    style: AppFonts.getPriceStyle(context)
                        .copyWith(color: Colors.black54))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Discount", style: AppFonts.getProductTitleStyle(context)),
                Text.rich(
                  TextSpan(
                    text: "- ",
                    style: AppFonts.getPriceStyle(context).copyWith(),
                    children: [
                      TextSpan(
                        text: "₹$discountValue",
                        style: AppFonts.getPriceStyle(context).copyWith(),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(
                height: 1,
                color: kLightGreen,
                indent: 250,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Grand total",
                    style: AppFonts.getProductTitleStyle(context)),
                Text("₹$totalValue",
                    style: AppFonts.getPriceStyle(context)
                        .copyWith(color: Colors.black54))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
