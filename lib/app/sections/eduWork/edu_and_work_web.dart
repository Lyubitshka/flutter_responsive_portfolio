import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/sections/eduWork/widgets/eduwork_card.dart';
import 'package:web_presentation/app/utils/edy_and_work_utils.dart';
import 'package:web_presentation/core/animations/entrance_fader.dart';
import 'package:web_presentation/core/color/colors.dart';

class EduAndWorkWeb extends StatefulWidget {
  const EduAndWorkWeb({super.key});

  @override
  State<EduAndWorkWeb> createState() => _EduAndWorkWebState();
}

class _EduAndWorkWebState extends State<EduAndWorkWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      width: 100.sw,
      padding: const EdgeInsets.only(top: 15, left: 25, right: 25, bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Education & Work',
            style: GoogleFonts.josefinSans(
              fontSize: 42,
              fontWeight: FontWeight.w700,
              color: primaryColor,
            ),
          ),
          const SizedBox(height: 15),
          EntranceFader(
            delay: const Duration(milliseconds: 300),
            duration: const Duration(seconds: 2),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: bgColor,
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
                      ]),
                  child: Text(
                    eduworkUtils[0].date,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.chango(fontSize: 25),
                  ),
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: bgColor,
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
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        child: Text(
                          eduworkUtils[0].title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        eduworkUtils[0].subtitle,
                        style: GoogleFonts.josefinSans(
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      width: 100.sw,
                      padding: const EdgeInsets.all(8),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          eduworkUtils[0].description,
                          style: GoogleFonts.josefinSans(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          //    SECOND SECTION   //
          const Gap(30),
          EntranceFader(
            delay: const Duration(milliseconds: 600),
            duration: const Duration(seconds: 2),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  padding: const EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: bgColor,
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
                      ]),
                  child: Text(
                    eduworkUtils[1].date,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.chango(fontSize: 25),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: bgColor,
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
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10),
                        child: Text(
                          eduworkUtils[1].title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        eduworkUtils[1].subtitle,
                        style: GoogleFonts.josefinSans(
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      width: 100.sw,
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        eduworkUtils[1].description,
                        style: GoogleFonts.josefinSans(
                            fontSize: 20, color: secondaryColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
