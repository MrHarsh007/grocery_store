import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store/CartScreen/widgets/CouponBottomSheet.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/main.dart';

class ApplyCoupon extends StatelessWidget {
  const ApplyCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Colors.black), //<-- SEE HERE
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                        ),
                        labelText: 'Enter Coupon Code',
                        labelStyle: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                        contentPadding: const EdgeInsets.only(left: 10)),
                  )),
                  Container(
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kLightGreen,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Apply",
                          textAlign: TextAlign.center,
                          softWrap: true,
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            letterSpacing: 1.3,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
                margin: const EdgeInsets.only(right: 8, top: 5),
                child: GestureDetector(
                  onTap: () => showCouponBottomSheet(context),
                  child: Text(
                    "View all Coupen>>",
                    style: AppFonts.getProductDescriptionStyle(context),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
