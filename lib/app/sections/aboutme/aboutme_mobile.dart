import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:scaled_list/scaled_list.dart';
import 'package:web_presentation/app/utils/about_utils.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/constants/constants.dart';

class AboutMeMobile extends StatelessWidget {
  const AboutMeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    // final ScrollController scrollContoller = ScrollController();

    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      width: 100.sw,
      // height: 100.sw,
      // color: Colors.white,
      padding: EdgeInsets.only(top: 5.sh),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'About me',
            style: GoogleFonts.josefinSans(
              fontSize: 32,
              fontWeight: FontWeight.w800,
              color: secondaryColor,
            ),
          ),
          const Gap(10),
          Container(
            width: 480,
            height: 400,
            // clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.topCenter,
              children: [
                Positioned(
                  top: 120,
                  child: Image.asset(
                    'images/aboutme/yoga.png',
                    scale: 6,
                  ),
                ),
                Container(
                  // height: 320,
                  width: 320,
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.4)),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      aboutMe1,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.josefinSans(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: secondaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(42),
          Container(
            // height: 320,
            width: 320,
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
            child: Text(
              aboutMe2,
              textAlign: TextAlign.center,
              style: GoogleFonts.chango(
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: secondaryColor,
              ),
            ),
          ),
          Container(
            height: 420,
            width: 350,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(color: Colors.transparent),
            child: ListView.builder(
                itemCount: hobbies.length - 1,
                itemBuilder: (context, index) {
                  return hobbyTag(index);
                }),
          ),
          // const Padding(padding: EdgeInsets.all(10))
        ],
      ),
    );
  }

  hobbyTag(int index) {
    return Container(
      // height: 420,
      margin: const EdgeInsets.only(bottom: 10),
      // padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: hobbies[index].bgColor,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Icon(
                hobbies[index].icon,
                color: Colors.white,
                size: 35,
              ),
            ),
            const Gap(10),
            Text(
              hobbies[index].name,
              style: GoogleFonts.josefinSans(color: Colors.white, fontSize: 22),
            ),
          ],
        ),
      ),
    );
  }
}
