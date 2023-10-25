import 'package:flutter/material.dart';
import 'package:grocery_store/Reusable%20Component/paymentOption.dart';
import 'package:grocery_store/Reusable%20Component/walletOption.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/main.dart';
import '../Reusable Component/priceDetails.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      appBar: AppBar(
          title: Text("Payment Page",
              style: AppFonts.screenHeadingStyle(context))),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(children: [
          const PriceDetails(
              subtotalValue: "70",
              taxValue: "70",
              discountValue: "70",
              totalValue: "70"),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Payment Options",
                      style: AppFonts.headingStyle(context),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Divider(
                      height: 1,
                      endIndent: 150,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const PaymentOption(
                        image: "assets/image/creditcard.png",
                        text: "Credit/Debit Card"),
                    const Divider(
                      height: 5,
                    ),
                    const PaymentOption(
                        image: "assets/image/upi.png", text: "UPI"),
                    const Divider(
                      height: 5,
                    ),
                    const PaymentOption(
                        image: "assets/image/netbanking.png",
                        text: "Net Banking"),
                    const Divider(
                      height: 5,
                    ),
                    const PaymentOption(
                        image: "assets/image/wallet.png", text: "Wallet"),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WalletOption(imagePath: "assets/image/paytm.png"),
                        WalletOption(imagePath: "assets/image/gpay.png"),
                        WalletOption(imagePath: "assets/image/phonepe.png"),
                      ],
                    )
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
