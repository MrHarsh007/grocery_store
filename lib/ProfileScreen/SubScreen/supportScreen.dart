import 'package:flutter/material.dart';
import 'package:grocery_store/appFonts.dart';
import 'package:grocery_store/main.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  String selectedOption = '';

  Widget buildRadioTile(String title, String value) {
    return RadioListTile(
      title: Text(
        title,
        style: AppFonts.getProductTitleStyle(context),
      ),
      dense: true,
      value: value,
      groupValue: selectedOption,
      activeColor: Colors.green,
      onChanged: (newValue) {
        setState(() {
          selectedOption = newValue as String;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Support Screen",
          style: AppFonts.screenHeadingStyle(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          buildRadioTile("Report a Bug", "Report a Bug"),
          buildRadioTile("Submit FeedBack", "Submit FeedBack"),
          buildRadioTile("Report Technical Issue", "Report Technical Issue"),
          buildRadioTile("Product or order related problem",
              "Product or order related problem"),
          buildRadioTile("Payment related problem", "Payment related problem"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Selected Option: ",
                softWrap: true,
                textAlign: TextAlign.center,
                style: AppFonts.getProductTitleStyle(context),
              ),
              Text(
                selectedOption,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: AppFonts.getPriceStyle(context),
              ),
            ],
          ),
          Container(
            height: 300,
            padding: const EdgeInsets.all(14),
            child: Column(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Explain in brief...',
                        hintStyle: AppFonts.getProductTitleStyle(context),
                        contentPadding:
                            const EdgeInsets.only(top: 10, left: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.black))),

                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    expands: true,
                    textAlign: TextAlign.start, // Align text to top left
                    textAlignVertical: TextAlignVertical.top,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width /
                            2, // Set the desired width here
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kLightGreen,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Submit",
                              textAlign: TextAlign.center,
                              softWrap: true,
                              overflow: TextOverflow.ellipsis,
                              style: AppFonts.getProductTitleStyle(context)
                                  .copyWith(color: Colors.white, fontSize: 16)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
