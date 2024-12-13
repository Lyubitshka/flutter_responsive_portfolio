import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/sections/aboutme/widgets/hoverable_hobby_chip.dart';
import 'package:web_presentation/app/utils/about_utils.dart';
import 'package:web_presentation/core/color/colors.dart';

import '../../../core/constants/constants.dart';

class AboutMeWeb extends StatelessWidget {
  const AboutMeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      width: 100.sw,
      color: bgColor,
      padding: EdgeInsets.symmetric(
        vertical: 22,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20, left: 15.sw),
            child: Text(
              'After hours',
              style: GoogleFonts.josefinSans(
                fontSize: 42,
                fontWeight: FontWeight.w700,
                color: primaryColor,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              aboutCard(
                text: aboutMe1,
                imagePath: 'images/aboutme/learn.png',
              ),
              aboutCard(
                text: aboutMe2,
                imagePath: 'images/aboutme/yoga.png',
              ),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                direction: Axis.vertical,
                alignment: WrapAlignment.center,
                children: hobbies
                    .map((hobby) => HoverableHobbyChip(hobby: hobby))
                    .toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget aboutCard({
    required String text,
    required String imagePath,
  }) {
    return Container(
      width: 340,
      height: 400,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade500,
            spreadRadius: 1,
            blurRadius: 15,
            offset: const Offset(4, 4),
          ),
          const BoxShadow(
            color: Colors.white,
            spreadRadius: 3,
            blurRadius: 15,
            offset: Offset(-6, -6),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: GoogleFonts.josefinSans(
                fontSize: 20,
                color: secondaryColor,
              ),
            ),
          ),
          const Spacer(),
          Image.asset(
            imagePath,
            height: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }

  // Widget hobbyChip(HobbyTagDetails hobby) {
  //   return Chip(
  //     backgroundColor: hobby.bgColor.withOpacity(0.9),
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(50),
  //         side: BorderSide.none // większe zaokrąglenie
  //         ),
  //     label: Row(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         Icon(
  //           hobby.icon,
  //           color: Colors.white,
  //         ),
  //         const Gap(8),
  //         Text(
  //           hobby.name,
  //           style: GoogleFonts.josefinSans(color: Colors.white, fontSize: 16),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
