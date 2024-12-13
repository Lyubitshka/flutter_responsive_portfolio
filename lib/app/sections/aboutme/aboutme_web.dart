import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/utils/about_utils.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/constants/fonts.dart';
import '../../../core/constants/constants.dart';

class AboutMeWeb extends StatelessWidget {
  const AboutMeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 100.sw,
      color: bgColor,
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.sw),
            child: Text('After hours', style: titleWeb),
          ),
          const Gap(5),
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.topCenter,
              children: [
                Image.asset(
                  'images/aboutme/yoga.png',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth < 800 ? 10.sw : 20.sw,
                      vertical: 25),
                  child: Container(
                    width: 650,
                    color: bgColor.withOpacity(0.4),
                    child: Text(
                      aboutMe2,
                      textAlign: TextAlign.center,
                      style: textTab,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.sw),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children:
                  hobbies.map((hobby) => animatedHobbyChip(hobby)).toList(),
            ),
          ),
          Gap(20),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth < 800 ? 10.sw : 25.sw,
            ),
            child: Text(
              aboutMe1,
              textAlign: TextAlign.center,
              style: textTab,
            ),
          ),
          Gap(28),
          // Image.asset(
          //   'images/div.png',
          //   fit: BoxFit.contain, // Dopasowanie obrazu
          //   width: double.infinity, // Szerokość obrazu
          //   height: 80, // Wysokość obrazu
          // ),
          Divider(
            height: 4,
            endIndent: 20.sw,
            indent: 20.sw,
            color: primaryColor,
          ),
          // const Padding(padding: EdgeInsets.all(10))
        ],
      ),
    );
  }

  Widget animatedHobbyChip(HobbyTagDetails hobby) {
    return MouseRegion(
      onEnter: (_) {},
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: hobby.bgColor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              hobby.icon,
              color: Colors.white,
              size: 26,
            ),
            const Gap(8),
            Text(
              hobby.name,
              style: GoogleFonts.josefinSans(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
