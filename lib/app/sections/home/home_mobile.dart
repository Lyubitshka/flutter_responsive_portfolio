// ignore_for_file: dead_code

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/core/animations/entrance_fader.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/constants/constants.dart';

class HomeMobile extends StatefulWidget {
  const HomeMobile({super.key});

  @override
  State<HomeMobile> createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.of(context).size;
    bool isHover = false;

    return Container(
      color: bgColor,
      child: Padding(
        padding: EdgeInsets.only(
          left: 10.sw,
          right: 20,
          top: 30.sh,
          bottom: 5.sh,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 0.5.sh),
            AnimatedTextKit(totalRepeatCount: 1, animatedTexts: [
              TyperAnimatedText('Hello World',
                  speed: const Duration(milliseconds: 250),
                  textStyle: GoogleFonts.comingSoon(fontSize: 42)),
            ]),
            EntranceFader(
              delay: const Duration(seconds: 3),
              offset: const Offset(0, 0),
              duration: const Duration(milliseconds: 800),
              child: Text(
                'I\'m Anna',
                style: GoogleFonts.chango(fontSize: 60),
              ),
            ),
            SizedBox(height: 1.sh),
            Padding(
              padding: EdgeInsets.only(right: 10.sw),
              child: Text(
                overlayDescriptionText,
                style: GoogleFonts.josefinSans(
                    color: textColor.withOpacity(0.8), fontSize: 18),
              ),
            ),
            SizedBox(height: 6.sh),

            Center(
              child: InkWell(
                  onHover: (value) {
                    setState(() {
                      isHover = value;
                    });
                  },
                  onTap: () {},
                  child: AvatarGlow(
                    startDelay: const Duration(seconds: 4),
                    glowColor: primaryColor,
                    glowRadiusFactor: 0.50,
                    child: Container(
                      height: 50,
                      width: 210,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: isHover ? secondaryColor : primaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          'Download CV',
                          style: GoogleFonts.josefinSans(
                              fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
