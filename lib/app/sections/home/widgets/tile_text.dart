import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  final double? top;
  final double? left;
  final String text;
  const TitleText({
    super.key,
    required this.text,
    this.top,
    this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Text(
        text,
        style: GoogleFonts.fascinate(
          fontSize: 130,
          fontWeight: FontWeight.w900,
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}
