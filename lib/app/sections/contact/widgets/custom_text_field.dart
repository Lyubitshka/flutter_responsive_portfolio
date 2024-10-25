import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/core/color/colors.dart';

class CustomFormField extends StatefulWidget {
  final int index;
  final String label;
  CustomFormField({super.key, required this.index, required this.label});

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  // bool? isTab = false;

  bool isHovered = false;
  List<bool> isTab = List.generate(4, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: EdgeInsets.only(bottom: 10, left: 2, right: 2),
      decoration: BoxDecoration(
        color: !isTab[widget.index]
            ? primaryColor.withOpacity(0.3)
            : bgSecondColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: () {},
        // focusColor: accentColor,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: EdgeInsets.only(left: 6.sw),
          child: TextField(
            decoration: InputDecoration(
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: widget.label,
              hintStyle: GoogleFonts.josefinSans(
                fontSize: 19,
                color: textColor.withOpacity(0.7),
                fontWeight: FontWeight.w600,
              ),
              enabledBorder: InputBorder.none,
            ),
          ),
        ),
      ),
    ));
  }
}
