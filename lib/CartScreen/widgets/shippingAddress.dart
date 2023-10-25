import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store/appFonts.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shipping address",
              style: AppFonts.headingStyle(context),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Divider(
                height: 1,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.location_on),
                const SizedBox(
                  width: 25,
                ),
                SizedBox(
                  width: 280,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        "Sachin Brahmbhatt",
                        minFontSize: 12,
                        maxFontSize: 12,
                        maxLines: 1,
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                      AutoSizeText(
                          "1, Amrut nagar society, opposite to shreeji veela society,Near rajmandir cinema, palanpur highway, deesa, gujarat Deesa - 385535, Gujarat",
                          minFontSize: 10,
                          maxFontSize: 10,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 5,
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              // fontSize: 12,
                              fontWeight: FontWeight.w400)),
                      AutoSizeText(
                        "+91 63542 12716",
                        minFontSize: 12,
                        maxFontSize: 12,
                        maxLines: 1,
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.w600, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8, right: 8),
              child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Text(
                  "Change address>>",
                  style: AppFonts.getProductDescriptionStyle(context)
                      .copyWith(fontSize: 10),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
