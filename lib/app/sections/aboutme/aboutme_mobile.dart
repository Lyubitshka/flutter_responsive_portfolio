import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/utils/about_utils.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/constants/constants.dart';
import 'package:web_presentation/core/constants/fonts.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 100.sw,
      color: bgColor,
      padding: const EdgeInsets.only(top: 42, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.sw),
            child: Text('After hours', style: titleTab),
          ),
          const Gap(5),
          Stack(
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children:
                    hobbies.map((hobby) => animatedHobbyChip(hobby)).toList(),
              ),
            ),
          ),
          Gap(20),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth < 800 ? 10.sw : 20.sw,
            ),
            child: Text(
              aboutMe1,
              textAlign: TextAlign.center,
              style: textTab,
            ),
          ),
          Gap(25),
          Divider(
            height: 4,
            endIndent: 12.sw,
            indent: 12.sw,
            color: primaryColor,
          ),
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
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              hobby.icon,
              color: Colors.white,
              size: 20,
            ),
            const Gap(8),
            Text(
              hobby.name,
              style: GoogleFonts.josefinSans(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  Widget hobbyTag(int index) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            hobbies[index].bgColor,
            hobbies[index].bgColor.withOpacity(0.6)
          ],
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              hobbies[index].icon,
              color: Colors.white,
              size: 30,
            ),
            const Gap(10),
            Text(
              hobbies[index].name,
              style: GoogleFonts.josefinSans(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
