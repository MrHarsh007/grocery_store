// ignore: file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store/registrationScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToLoginPage();
  }

  void navigateToLoginPage() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => RegistrationScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 80),
                      // height: MediaQuery.of(context).size.height / 1.8,
                      // width: MediaQuery.of(context).size.width / 1.8,
                      child: Image.asset(
                        "assets/image/logo.png",
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Grocery",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                      color: const Color.fromRGBO(9, 199, 5, 1),
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      wordSpacing: 1.8),
                ),
                Text(
                  '"Solution for your daily need!"',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 14,
                    // fontWeight: FontWeight.w500,
                    // wordSpacing: 1.6
                  ),
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Image.asset(
                  "assets/image/lowercurve.png",
                ),
              ))
        ],
      ),
    );
  }
}
