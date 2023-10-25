import 'package:flutter/material.dart';
import 'package:grocery_store/CartScreen/widgets/CouponBottomSheet.dart';
import 'package:grocery_store/CartScreen/widgets/applyCoupon.dart';
import 'package:grocery_store/CartScreen/widgets/cartItems.dart';
import 'package:grocery_store/CartScreen/widgets/checkoutBtn.dart';
import 'package:grocery_store/CartScreen/widgets/shippingAddress.dart';
import 'package:grocery_store/Reusable%20Component/priceDetails.dart';
import 'package:grocery_store/appFonts.dart';
import '../main.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      appBar: AppBar(
        title: Text("Cart Page", style: AppFonts.screenHeadingStyle(context)),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                  onTap: () => showCouponBottomSheet(context),
                  child: const Icon(Icons.local_offer)))
        ],
        titleSpacing: 0,
      ),
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CartIteams()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(child: ApplyCoupon()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(child: ShippingAddress()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
                child: PriceDetails(
                    subtotalValue: "70",
                    taxValue: "70",
                    discountValue: "70",
                    totalValue: "70")),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(child: CheckoutBtn()),
          ],
        ),
      ),
    );
  }
}
