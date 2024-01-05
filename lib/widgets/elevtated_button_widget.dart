import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElevatedButtonWidget extends StatelessWidget {
  ElevatedButtonWidget({
    super.key,
    required this.text,
    required this.onpressed,
    this.color = Colors.orange,
  });

  final String text;

  void Function()? onpressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5 , bottom: 8),
      child: SizedBox(
        height: 38,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: color),
          onPressed: onpressed,
          child: Text(
            text,
            style: GoogleFonts.aBeeZee(),
          ),
        ),
      ),
    );
  }
}
