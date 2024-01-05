import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UnderlineContainer extends StatelessWidget {
  const UnderlineContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.black),
        ),
      ),
    );
  }
}
