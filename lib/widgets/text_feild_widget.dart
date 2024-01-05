import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.text,
    this.fontsize = 14,
  });

  final String text;
  final double fontsize;
  // final Widget iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4, left: 3),
      child: SizedBox(
        height: 53,
        width: double.infinity,
        child: TextField(
          decoration: InputDecoration(
            hintText: text,
            contentPadding: const EdgeInsets.only(top: 2, left: 12),
            hintStyle: GoogleFonts.aBeeZee(
              color: Colors.grey,
              fontSize: fontsize,
            ),
            // suffixIcon: iconData,
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
