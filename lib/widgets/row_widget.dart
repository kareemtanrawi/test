import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({
    super.key,
    required this.text1,
    this.text2 = '-',
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: GoogleFonts.aBeeZee(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text2,
          style: GoogleFonts.aBeeZee(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
