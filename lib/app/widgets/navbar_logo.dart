import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Text(
        'Portfolio',
        style: GoogleFonts.chango(
          color: const Color.fromARGB(255, 0, 0, 0),
          fontSize: 22,
          fontWeight: FontWeight.w900,
          height: 1.2,
        ),
      ),
    );
  }
}
