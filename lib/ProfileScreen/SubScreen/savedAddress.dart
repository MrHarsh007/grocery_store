import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store/ProfileScreen/SubScreen/addAddress.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/main.dart';

class MySavedAddress extends StatefulWidget {
  const MySavedAddress({super.key});

  @override
  State<MySavedAddress> createState() => _MySavedAddressState();
}

class _MySavedAddressState extends State<MySavedAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBarColor,
        appBar: AppBar(
          title: Text("Saved Address",
              style: AppFonts.screenHeadingStyle(context)),
          titleSpacing: 0,
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddAddress()));
                },
                child: Text(
                  "+ Add New",
                  style: AppFonts.getProductTitleStyle(context)
                      .copyWith(color: kLightGreen),
                ))
          ],
        ),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
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
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
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
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 1,
                    color: Colors.black,
                    endIndent: 15,
                    indent: 15,
                  )
                ],
              );
            }));
  }
}
