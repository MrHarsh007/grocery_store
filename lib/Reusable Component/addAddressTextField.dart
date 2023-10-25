import 'package:flutter/material.dart';
import 'package:grocery_store/appFonts.dart';

class AddAddressTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController textEditingController;
  final TextInputType keyboardType;
  const AddAddressTextField({
    super.key,
    required this.hintText,
    required this.textEditingController,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: TextField(
        textAlign: TextAlign.start,
        controller: textEditingController,
        keyboardType: keyboardType,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: AppFonts.getProductDescriptionStyle(context)),
      ),
    );
  }
}
