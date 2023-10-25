import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_store/Reusable%20Component/addAddressTextField.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/main.dart';

class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactNoController = TextEditingController();
  TextEditingController alternativeNoController = TextEditingController();
  TextEditingController houseNoController = TextEditingController();
  TextEditingController addressLine1Controller = TextEditingController();
  TextEditingController addressLine2Controller = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController districtController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Add Address", style: AppFonts.screenHeadingStyle(context)),
        titleSpacing: 0,
        actions: const [
          Icon(
            Icons.done,
            color: kLightGreen,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  AddAddressTextField(
                      hintText: "Full Name",
                      textEditingController: nameController),
                  AddAddressTextField(
                    hintText: "Your Email",
                    textEditingController: emailController,
                    keyboardType: TextInputType.emailAddress,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: AddAddressTextField(
                      hintText: "Contact Number",
                      textEditingController: contactNoController,
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: AddAddressTextField(
                        hintText: "Alternative Number",
                        textEditingController: alternativeNoController,
                        keyboardType: TextInputType.phone),
                  ),
                ],
              ),
              AddAddressTextField(
                hintText: "House No",
                textEditingController: houseNoController,
                keyboardType: TextInputType.number,
              ),
              AddAddressTextField(
                  hintText: "Address Line 1",
                  textEditingController: addressLine1Controller),
              AddAddressTextField(
                  hintText: "Address Line 2",
                  textEditingController: addressLine2Controller),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: AddAddressTextField(
                        hintText: "State",
                        textEditingController: stateController),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: AddAddressTextField(
                        hintText: "District",
                        textEditingController: districtController),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: AddAddressTextField(
                        hintText: "City",
                        textEditingController: cityController),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: AddAddressTextField(
                      hintText: "Pincode",
                      textEditingController: pincodeController,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Center(
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(217, 217, 217, 2),
                              blurRadius: 1,
                              offset: Offset(4.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: kLightGreen,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                    child: Icon(
                                  Icons.home_filled,
                                  color: Colors.white,
                                )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Home",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(217, 217, 217, 2),
                              blurRadius: 1,
                              offset: Offset(4.0, 2.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                    child: Icon(
                                  Icons.work,
                                )),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Work",
                                  style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.7,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(217, 217, 217, 2),
                            blurRadius: 1,
                            offset: Offset(4.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(
                                  child: Icon(
                                Icons.location_on,
                              )),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Add Address",
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
