import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:web_presentation/core/animations/entrance_fader.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/providers/scroll_provider.dart';

class NavBarActionButton extends StatefulWidget {
  final String label;
  final int index;
  const NavBarActionButton(
      {super.key, required this.label, required this.index});

  @override
  State<NavBarActionButton> createState() => _NavBarActionButtonState();
}

class _NavBarActionButtonState extends State<NavBarActionButton> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    final screenWidth = MediaQuery.of(context).size.width;
    return EntranceFader(
      offset: const Offset(0, -10),
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 250),
      child: InkWell(
        onHover: (value) {
          setState(() => isHover = value);
        },
        customBorder:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onTap: () {
          scrollProvider.jumpTo(widget.index);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Text(widget.label,
              style: GoogleFonts.josefinSans(
                  color: isHover ? primaryColor : Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: screenWidth < 1200 ? 15 : 20)),
        ),
      ),
    );
  }
}
