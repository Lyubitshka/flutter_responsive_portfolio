import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_presentation/core/color/colors.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Text(
        'Anna\'s Portfolio',
        style: GoogleFonts.chango(
          color: const Color.fromARGB(255, 0, 0, 0),
          fontSize: 20,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
