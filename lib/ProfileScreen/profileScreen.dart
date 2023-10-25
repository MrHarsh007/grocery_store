import 'dart:async';

import 'package:flutter/material.dart';
import 'package:grocery_store/ProfileScreen/SubScreen/favouriteProducts.dart';
import 'package:grocery_store/ProfileScreen/SubScreen/supportScreen.dart';
import 'package:grocery_store/Reusable%20Component/userProfilePicture.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/main.dart';
import 'package:grocery_store/ProfileScreen/SubScreen/myOrder.dart';
import 'package:grocery_store/registrationScreen.dart';
import '../Reusable Component/profileContainer.dart';
import '../Reusable Component/profileTextfield.dart';
import 'SubScreen/myReviews.dart';
import 'SubScreen/savedAddress.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  bool isLoading = false;
  bool isEditProfile = false;
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
      body: isEditProfile
          ? editProfile(context)
          : Padding(
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
                                  builder: (context) =>
                                      const MyFavouriteProducts()));
                        },
                        child: const MyProfileContainer(
                            imagePath: "assets/image/heart.png",
                            title: "Favourites"),
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
                                  builder: (context) =>
                                      const MySavedAddress()));
                        },
                        child: const MyProfileContainer(
                            imagePath: "assets/image/location.png",
                            title: "Address"),
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
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          setState(() {
                            isEditProfile = true;
                          });
                        },
                        child: Container(
                          width: 120,
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 0),
                          decoration: BoxDecoration(
                              color: kLightGreen,
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Edit Profile",
                            textAlign: TextAlign.center,
                            style: AppFonts.screenHeadingStyle(context)
                                .copyWith(
                                    color: Colors.white,
                                    fontSize: 12,
                                    wordSpacing: 1),
                          ),
                        ),
                      ),
                      isLoading
                          ? const CircularProgressIndicator(
                              color: kLightGreen,
                            )
                          : GestureDetector(
                              onTap: () async {
                                setState(() {
                                  isLoading = true;
                                });

                                Timer(const Duration(seconds: 2), () {
                                  setState(() {
                                    isLoading = false;
                                  });
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const RegistrationScreen()));
                                  print("Logout Successfully");
                                });
                              },
                              child: Container(
                                width: 120,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 0),
                                decoration: BoxDecoration(
                                    color: kLightGreen,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Log Out",
                                  textAlign: TextAlign.center,
                                  style: AppFonts.screenHeadingStyle(context)
                                      .copyWith(
                                          color: Colors.white,
                                          fontSize: 12,
                                          wordSpacing: 1),
                                ),
                              ),
                            ),
                    ],
                  ),
                ]),
              ),
            ),
    ));
  }

  Widget editProfile(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SingleChildScrollView(
          child: Column(children: [
        const SizedBox(
          height: 20,
        ),
        Center(
          child: SizedBox(
            height: 120,
            width: 120,
            child: UserProfilePicture(
              imagePath:
                  "https://img.freepik.com/free-vector/isolated-young-handsome-man-different-poses-white-background-illustration_632498-859.jpg?w=740&t=st=1697889966~exp=1697890566~hmac=c8e0c2dda99d124e5f6fe1cc0f2c4733b91c7a554de28b707c39e6f132067512",
              editable: true,
            ),
          ),
        ),

        const SizedBox(
          height: 30,
        ),
        editProfileTextField(
          hintText: "Harsh",
          nameText: "Name",
          textEditingController: nameController,
        ),
        const SizedBox(
          height: 15,
        ),
        editProfileTextField(
          hintText: "Porwalharsh007@gmail.com",
          nameText: "Email",
          textEditingController: emailController,
        ),
        const SizedBox(
          height: 15,
        ),
        editProfileTextField(
          hintText: "8460946896",
          nameText: "Mobile Number",
          textEditingController: numberController,
        ),
        const SizedBox(
          height: 15,
        ),
        // editProfileTextField(
        //   hintText: snapshot.data!.data.status,
        //   nameText: "Gender",
        //   textEditingController: nameController,
        // ),
        const SizedBox(
          height: 35,
        ),

        GestureDetector(
          onTap: () async {},
          child: Container(
            width: MediaQuery.of(context).size.width / 1.8,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
            decoration: BoxDecoration(
                color: kLightGreen, borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Save Profile",
              textAlign: TextAlign.center,
              style: AppFonts.screenHeadingStyle(context).copyWith(
                  color: Colors.white, fontSize: 14, wordSpacing: 1.2),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        GestureDetector(
          onTap: () async {
            setState(() {
              isEditProfile = false;
            });

            nameController.clear();
            emailController.clear();
            numberController.clear();
          },
          child: Container(
            width: MediaQuery.of(context).size.width / 1.8,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
            decoration: BoxDecoration(
                color: kLightGreen, borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Go Back",
              textAlign: TextAlign.center,
              style: AppFonts.screenHeadingStyle(context).copyWith(
                  color: Colors.white, fontSize: 14, wordSpacing: 1.2),
            ),
          ),
        ),
        const SizedBox(
          height: 35,
        ),
      ])),
    );
  }
}
