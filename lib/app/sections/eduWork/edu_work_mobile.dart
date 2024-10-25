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

class EduWorkMobile extends StatefulWidget {
  const EduWorkMobile({super.key});

  @override
  State<EduWorkMobile> createState() => _EduWorkMobileState();
}

class _EduWorkMobileState extends State<EduWorkMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      width: 100.sw,
      padding: EdgeInsets.only(top: 6.sh, left: 25.sw, right: 10.sw),
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Education & Work',
              style: GoogleFonts.josefinSans(
                fontSize: 42,
                fontWeight: FontWeight.w700,
                color: textColor,
              ),
            ),
            SizedBox(height: 3.sh),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                EntranceFader(
                  delay: const Duration(milliseconds: 300),
                  duration: const Duration(seconds: 2),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                offset: const Offset(-6, -6),
                              ),
                            ]),
                        child: Text(
                          eduworkUtils[0].date,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.chango(fontSize: 25),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
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
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25),
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
                            ],
                          ),
                          Container(
                            width: 620,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: primaryColor.withOpacity(0.3),
                                spreadRadius: 40,
                                blurRadius: 90,
                                // offset: const Offset(10, 10),
                              )
                            ]),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                eduworkUtils[0].description,
                                style: GoogleFonts.josefinSans(),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                offset: const Offset(-6, -6),
                              ),
                            ]),
                        child: Text(
                          eduworkUtils[1].date,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.chango(fontSize: 25),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
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
                                        fontWeight: FontWeight.w700,
                                        fontSize: 25),
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
                            ],
                          ),
                          Container(
                            width: 620,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: primaryColor.withOpacity(0.3),
                                spreadRadius: 40,
                                blurRadius: 90,
                                // offset: const Offset(10, 10),
                              )
                            ]),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                eduworkUtils[1].description,
                                style: GoogleFonts.josefinSans(),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
