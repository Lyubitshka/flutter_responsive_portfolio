import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:web_presentation/core/animations/entrance_fader.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/providers/scroll_provider.dart';

class NavBarFooterButton extends StatefulWidget {
  final String label;
  final int index;
  final IconData icon;
  const NavBarFooterButton({
    super.key,
    required this.label,
    required this.index,
    required this.icon,
  });

  @override
  State<NavBarFooterButton> createState() => _NavBarFooterButtonState();
}

class _NavBarFooterButtonState extends State<NavBarFooterButton> {
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
          padding: const EdgeInsets.only(left: 10, right: 15, top: 30),
          child: screenWidth < 800
              ? Icon(
                  widget.icon,
                  size: 22,
                  color: isHover ? primaryColor : Colors.white60,
                )
              : Text(widget.label,
                  style: GoogleFonts.josefinSans(
                      color: isHover ? primaryColor : Colors.white60,
                      fontWeight: FontWeight.w300,
                      fontSize: screenWidth < 1200 ? 15 : 20)),
        ),
      ),
    );
  }
}
