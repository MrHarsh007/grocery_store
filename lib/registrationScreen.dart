import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store/Reusable%20Component/customTextField.dart';
import 'package:grocery_store/mainPage.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  bool isSignUp = false;
  bool isForgetPass = false;
  bool _isObscure = true;

  Future<void> registerUser() async {
    final url = Uri.parse(
        'http://grocery.spikepointinfotech.com/grocery_api/register.php');

    final response = await http.post(
      url,
      body: {
        'name': nameController.text.toString(),
        'email': emailController.text.toString(),
        'password': passController.text.toString(),
        'mobile_number': mobileNumberController.text.toString(),
      },
    );

    final responseBody = json.decode(response.body);
    final error = responseBody['error'] as bool;
    final msg = responseBody['message'] as String;
    if (error) {
      // User registered successfully
      print('User registered successfully');
      print(response.body);

      // Clear the text fields
      emailController.clear();
      passController.clear();
      nameController.clear();
      confirmPassController.clear();
      mobileNumberController.clear();
    }
  }

  Future<void> loginUser(
      {required String email, required String password}) async {
    final url = Uri.parse(
        'http://grocery.spikepointinfotech.com/grocery_api/login.php');

    final response = await http.post(
      url,
      body: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      final error = responseBody['error'] as bool;
      if (!error) {
        // User registered successfully
        print('User registered successfully');
        print(response.body);
        showCustomAlertBox(context, response.body);

        // Clear the text fields
        emailController.clear();
        passController.clear();
        nameController.clear();
        confirmPassController.clear();
      }
    } else {
      // Registration failed
      print('Failed to register user. Error: ${response.body}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              "assets/image/uppercurve.jpg",
              // color: Colors.transparent
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 83, left: 17),
          child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  isForgetPass
                      ? AutoSizeText(
                          "Reset Password",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.montserrat(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      : Text(
                          isSignUp ? "SignUp" : "SignIn",
                          style: GoogleFonts.montserrat(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                  isForgetPass
                      ? Text(
                          "Enter Email address to Reset Password",
                          style: GoogleFonts.montserrat(
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      : Text(
                          isSignUp
                              ? "Sign in and experience the shameless \nshoping."
                              : "Welcome, Good to see you here",
                          style: GoogleFonts.montserrat(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                ],
              )),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
              margin: const EdgeInsets.only(
                  top: 180.0, left: 20, right: 20, bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                color:
                    const Color(0xFFFFFFFF).withOpacity(0.85), // Overlay color
                shape: BoxShape.rectangle,
              ),
              child: Column(
                children: [
                  const Spacer(),
                  Text(
                    "Grocery",
                    style: GoogleFonts.montserrat(
                        color: const Color.fromRGBO(9, 199, 5, 1),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        wordSpacing: 1.8),
                  ),
                  Text(
                    '"Solution for your daily need!"',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 8,
                      // fontWeight: FontWeight.w300,
                      // wordSpacing: 1.6
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 34),
                    child: Container(
                      decoration: BoxDecoration(
                          // color: const Color.fromRGBO(217, 217, 217, 2),
                          borderRadius: BorderRadius.circular(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedTab = TabSelection.login;
                                isSignUp = false; // Set selectedTab to login
                                isForgetPass = false;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 34),
                              decoration: BoxDecoration(
                                color: selectedTab == TabSelection.login
                                    ? const Color.fromRGBO(9, 199, 5, 0.6)
                                    : const Color.fromRGBO(217, 217, 217, 2),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Text(
                                'SignIn',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: selectedTab == TabSelection.login
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedTab = TabSelection.signup;
                                // Set selectedTab to signup
                                isSignUp = true;
                                isForgetPass = false;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 34),
                              decoration: BoxDecoration(
                                color: selectedTab == TabSelection.signup
                                    ? const Color.fromRGBO(9, 199, 5, 0.6)
                                    : const Color.fromRGBO(217, 217, 217, 2),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Text(
                                'SignUp',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: selectedTab == TabSelection.signup
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (!isForgetPass)
                        MyCustomTextField(
                            controller: emailController, hintText: "Email"),
                      if (isSignUp && !isForgetPass)
                        MyCustomTextField(
                          controller: nameController,
                          hintText: "Name",
                        ),
                      if (!isForgetPass)
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 24, left: 40, right: 40),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black54,
                                width: 2.0,
                              ),
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: TextField(
                              cursorRadius: const Radius.circular(10),
                              enableSuggestions: true,
                              obscureText: _isObscure,
                              cursorColor: Colors.black,
                              autocorrect: true,
                              controller: passController,
                              // keyboardType: ,
                              textAlign: TextAlign.start,
                              showCursor: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                // isDense: true,

                                // isCollapsed: true,
                                contentPadding:
                                    const EdgeInsets.fromLTRB(10, 6, 0, 0),
                                hintStyle: const TextStyle(
                                  fontSize: 12,
                                  letterSpacing: 2,
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isObscure =
                                          !_isObscure; // Toggle the visibility
                                    });
                                  },
                                  child: Icon(
                                    _isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ), // Include the suffixIcon here
                              ),
                            ),
                          ),
                        ),
                      if (isSignUp && !isForgetPass)
                        MyCustomTextField(
                          controller: mobileNumberController,
                          hintText: "Mobile Number",
                        ),
                      if (isForgetPass)
                        MyCustomTextField(
                            controller: emailController, hintText: "Email"),
                      if (!isSignUp && !isForgetPass)
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 18, left: 40, right: 40),
                          child: GestureDetector(
                            onTap: () {
                              // showCustomAlertBox(context, CustomTextField(controller: passController, hintText: "hintText"));
                              setState(() {
                                isForgetPass = true;
                              });
                            },
                            child: Text(
                              "Forget Password?",
                              style: GoogleFonts.montserrat(
                                color: const Color.fromRGBO(9, 199, 5, 0.6),
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                // wordSpacing: 1.6
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  if (!isSignUp && !isForgetPass)
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(9, 199, 5, 0.6)),
                        onPressed: () {
                          showCustomSnackbar(context, "Sign IN Clicked");
                          loginUser(
                              email: emailController.text.toString(),
                              password: passController.text.toString());
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            "SUBMIT",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2),
                          ),
                        )),
                  if (isForgetPass)
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(9, 199, 5, 0.6)),
                        onPressed: () {
                          showCustomSnackbar(context, "Forget Pass Clicked");
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            "SUBMIT",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2),
                          ),
                        )),
                  if (isSignUp)
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(9, 199, 5, 0.6)),
                        onPressed: () {
                          showCustomSnackbar(context, "Sign Up Clicked ");
                          // registerUser();
                          Fluttertoast.showToast(
                              msg: "msg",
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 2,
                              backgroundColor: Colors.white,
                              textColor: Colors.black,
                              fontSize: 16.0);
                          // Navigator.pushReplacement(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const MainPage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            "SUMBIT",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2),
                          ),
                        )),
                  const Spacer(),
                  const Spacer(),
                ],
              )),
        )
      ]),
    );
  }
}

enum TabSelection {
  login,
  signup,
}

TabSelection selectedTab =
    TabSelection.login; // Initialize with the default tab
