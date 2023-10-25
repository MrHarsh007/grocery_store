import 'package:flutter/material.dart';
import 'package:grocery_store/ProfileScreen/SubScreen/favouriteProducts.dart';
import 'package:grocery_store/ProfileScreen/SubScreen/supportScreen.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/main.dart';
import 'package:grocery_store/ProfileScreen/SubScreen/myOrder.dart';
import '../Reusable Component/profileContainer.dart';
import '../Reusable Component/profileTextfield.dart';
import 'SubScreen/myReviews.dart';
import 'SubScreen/savedAddress.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: appBarColor,
      appBar: AppBar(
        title: Text("Profile", style: AppFonts.screenHeadingStyle(context)),
        actions: [
          IconButton(
            icon: const Icon(Icons.support_agent),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SupportScreen()));
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: kLightGreen,
                    borderRadius: BorderRadius.circular(100)),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 80,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const ProfileTextField(
                hintText: "Sachin Brahmbhatt", nameText: "Name"),
            const SizedBox(
              height: 15,
            ),
            const ProfileTextField(
                hintText: "barotsachin739@gmail.com", nameText: "Email"),
            const SizedBox(
              height: 15,
            ),
            const ProfileTextField(
                hintText: "+91 63542 12716", nameText: "Mobile Number"),
            const SizedBox(
              height: 15,
            ),
            const ProfileTextField(hintText: "Male", nameText: "Gender"),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyOrder()));
                  },
                  child: const MyProfileContainer(
                      imagePath: "assets/image/myorder.png",
                      title: "My orders"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyFavouriteProducts()));
                  },
                  child: const MyProfileContainer(
                      imagePath: "assets/image/heart.png", title: "Favourites"),
                )
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MySavedAddress()));
                  },
                  child: const MyProfileContainer(
                      imagePath: "assets/image/location.png", title: "Address"),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyReviews()));
                  },
                  child: const MyProfileContainer(
                      imagePath: "assets/image/reviews.png",
                      title: "My Reviews"),
                )
              ],
            ),
            const SizedBox(
              height: 35,
            )
          ]),
        ),
      ),
    ));
  }
}
