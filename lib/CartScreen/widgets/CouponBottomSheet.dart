import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store/Reusable%20Component/coupenCard.dart';
import 'package:grocery_store/main.dart';

void showCouponBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: appBarColor,
    isScrollControlled: true,
    useSafeArea: true,
    constraints: BoxConstraints(
      maxHeight: MediaQuery.of(context).size.height / 1.4,
    ),
    context: context,
    builder: (BuildContext context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                "Discount Coupons",
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  height: 1,
                  color: Colors.black,
                  indent: 80,
                  endIndent: 80,
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: ListView.builder(
                  itemCount: couponList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          // Handle the tapped coupon here
                          // For example, you could update the selectedCoupon state
                        },
                        child: CouponCard(
                          title: couponList[index].title,
                          description: couponList[index].description,
                          details: couponList[index].details,
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
    },
  );
}

class Coupon {
  final String title;
  final String description;
  final List<String> details;

  Coupon({
    required this.title,
    required this.description,
    required this.details,
  });
}

List<Coupon> couponList = [
  Coupon(
    title: 'WELCOME50',
    description: 'Get 50% off on order above \$100',
    details: [
      'Valid till 15 Aug 2023',
      'Maximum Cart value is greater than \$500',
      'You can use this coupon one time only',
    ],
  ),
  Coupon(
    title: 'SAVEMORE20',
    description: 'Save 20% on your next purchase',
    details: [
      'Valid till 31 Dec 2023',
      'No minimum purchase required',
      'Applicable on all products',
    ],
  ),
  Coupon(
    title: 'FREESHIP',
    description: 'Enjoy free shipping on your order',
    details: [
      'Valid for a limited time',
      'Applicable on orders above \$50',
      'Available for standard shipping only',
    ],
  ),
  Coupon(
    title: 'FAMILY10',
    description: 'Family discount: Get 10% off on each item',
    details: [
      'Valid for family members only',
      'Discount applied per item',
      'No minimum purchase required',
    ],
  ),
  Coupon(
    title: 'BACKTOSCHOOL',
    description: 'Back to School Special: \$15 off on stationery',
    details: [
      'Valid till 30 Sep 2023',
      'Applicable on stationery items only',
      'Minimum purchase of \$30 required',
    ],
  ),
];
