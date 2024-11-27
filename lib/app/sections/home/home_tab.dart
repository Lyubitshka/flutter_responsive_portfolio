import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/core/animations/entrance_fader.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/constants/constants.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    bool isHover = false;

    return Container(
      width: 100.sw,
      color: bgColor,
      child: Stack(
        // fit: StackFit.loose,
        children: [
          Positioned(
            left: 18.sw,
            top: 80,
            child: Image.asset(
              'images/home_img.png',
              scale: 1.5,
              color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.sw,
              top: 280,
              // left: screenSize.width > 800 ? 15.sw : 10.sw,
              // top: screenSize.width > 800 ? 25.sh : 10.sh,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 0.5.sh),
                AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText(
                      'Hello World',
                      speed: const Duration(milliseconds: 250),
                      textStyle: GoogleFonts.comingSoon(
                        fontSize: screenSize.width > 800 ? 60 : 42,
                      ),
                    ),
                  ],
                ),
                EntranceFader(
                  delay: const Duration(seconds: 3),
                  offset: const Offset(0, 0),
                  duration: const Duration(milliseconds: 800),
                  child: Text(
                    'I\'m Anna',
                    style: GoogleFonts.chango(
                      fontSize: screenSize.width > 800 ? 84 : 72,
                    ),
                  ),
                ),
                SizedBox(height: 2.sh),
                Padding(
                  padding: EdgeInsets.only(
                      right: screenSize.width < 1200 ? 10.sw : 30.sw),
                  child: Text(
                    overlayDescriptionText,
                    style:
                        GoogleFonts.josefinSans(color: textColor, fontSize: 28),
                  ),
                ),
                SizedBox(height: 5.sh),
                Padding(
                  padding: EdgeInsets.only(bottom: 42.0, left: 20.sw),
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
                        glowRadiusFactor: 0.80,
                        child: Container(
                          height: 55,
                          width: 240,
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
        ],
      ),
    );
  }
}
