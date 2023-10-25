import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileTextField extends StatelessWidget {
  final String hintText;
  final String nameText;

  const ProfileTextField({
    super.key,
    required this.hintText,
    required this.nameText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(nameText,
            style: GoogleFonts.montserrat(
                color: const Color(0xff606060),
                fontSize: 10,
                fontWeight: FontWeight.w600)),
        TextField(
          readOnly: true,
          textAlign: TextAlign.start,
          decoration: InputDecoration(
              isCollapsed: true,
              contentPadding: EdgeInsets.only(bottom: 4),
              // isDense: true,
              hintText: hintText,
              hintStyle: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black)),
        )
      ],
    );
  }
}
