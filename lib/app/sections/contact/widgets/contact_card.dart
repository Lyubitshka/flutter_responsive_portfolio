import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/core/color/colors.dart';

class ContactCard extends StatelessWidget {
  ContactCard({
    super.key,
    this.icon,
    required this.title,
    required this.desc,
    this.isLogo,
    this.logoImg,
  });
  final IconData? icon;
  final String title;
  final String desc;
  bool? isLogo;
  final String? logoImg;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isLogo! ? Colors.white : primaryColor,
            // image: DecorationImage(image: AssetImage(logoImg!))
          ),
          child: Center(
              child: !isLogo!
                  ? Icon(
                      icon,
                      size: 30,
                      color: Colors.white,
                    )
                  : ClipOval(
                      child: Image.asset(
                        logoImg!,
                        scale: 10,
                      ),
                    )),
        ),
        SizedBox(width: 2.sw),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.josefinSans(
                color: textColor,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              desc,
              textAlign: TextAlign.start,
              style: GoogleFonts.josefinSans(
                color: secondaryColor,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
