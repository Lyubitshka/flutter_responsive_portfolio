import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_presentation/core/animations/entrance_fader.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/constants/constants.dart';

class HomeWeb extends StatefulWidget {
  const HomeWeb({super.key});

  @override
  State<HomeWeb> createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    bool isHover = false;

    return Container(
      width: 100.sw,
      color: bgColor,
      child: Stack(
        children: [
          Positioned(
            right: screenSize.width < 1024 ? -22.sw : -30.sw,
            top: 90,
            child: Image.asset(
              'images/home_img.png',
              scale: 1.4,
              color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.5),
              colorBlendMode: BlendMode.modulate,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.sw,
              top: 25.sh,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedTextKit(
                  totalRepeatCount: 1,
                  animatedTexts: [
                    TyperAnimatedText(
                      'Hello World',
                      speed: const Duration(milliseconds: 320),
                      textStyle: GoogleFonts.comingSoon(
                        fontSize: screenSize.width > 800 ? 72 : 35,
                      ),
                    ),
                  ],
                ),
                EntranceFader(
                  delay: const Duration(seconds: 4),
                  offset: const Offset(0, 0),
                  duration: const Duration(milliseconds: 1500),
                  child: Text(
                    'I\'m Anna',
                    style: GoogleFonts.chango(
                        fontSize: screenSize.width > 800 ? 120 : 60),
                  ),
                ),
                SizedBox(height: 1.sh),
                Padding(
                  padding: EdgeInsets.only(
                    right: screenSize.width < 1200 ? 30.sw : 40.sw,
                  ),
                  child: Text(
                    overlayDescriptionText,
                    style: GoogleFonts.josefinSans(
                        color: textColor.withOpacity(0.9), fontSize: 32),
                  ),
                ),
                SizedBox(height: 4.sh),
                Padding(
                  padding: EdgeInsets.only(bottom: 42.0, left: 20.sw),
                  child: InkWell(
                      onHover: (value) {
                        setState(() {
                          isHover = value;
                        });
                      },
                      onTap: () async {
                        final Uri url = Uri.parse(cvLink);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: AvatarGlow(
                        startDelay: const Duration(seconds: 4),
                        glowColor: primaryColor,
                        glowRadiusFactor: 0.80,
                        child: Container(
                          height: 55,
                          width: 240,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            // ignore: dead_code
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
