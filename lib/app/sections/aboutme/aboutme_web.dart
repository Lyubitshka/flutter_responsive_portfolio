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

class AboutMeWeb extends StatelessWidget {
  const AboutMeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    // final ScrollController scrollContoller = ScrollController();

    return Container(
      // clipBehavior: Clip.antiAliasWithSaveLayer,
      // decoration: BoxDecoration(border: Border.all(color: Colors.white38)),
      width: 100.sw,
      // height: 100.sw,
      color: bgColor,
      padding: const EdgeInsets.only(top: 25, bottom: 20),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'After hours',
            style: GoogleFonts.josefinSans(
              fontSize: 42,
              fontWeight: FontWeight.w700,
              color: primaryColor,
            ),
          ),
          const Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                // width: 480,
                // height: 400,
                // clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
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
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    SizedBox(
                      width: 340,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          aboutMe1,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.josefinSans(
                            fontSize: 22,
                            // fontWeight: FontWeight.w500,
                            color: secondaryColor,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 190,
                      child: Image.asset(
                        'images/aboutme/learn.png',
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                  clipBehavior: Clip.none,
                  alignment: AlignmentDirectional.topCenter,
                  children: [
                    Image.asset(
                      'images/aboutme/yoga.png',
                    ),
                    Positioned(
                      top: 420,
                      child: SizedBox(
                        // height: 320,
                        width: 420,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Text(
                            aboutMe2,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.josefinSans(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: secondaryColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
              SizedBox(
                height: 630,
                width: 350,
                child: ListView.builder(
                    itemCount: hobbies.length,
                    itemBuilder: (context, index) {
                      return hobbyTag(index);
                    }),
              )
            ],
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
          color: hobbies[index].bgColor.withOpacity(0.9),
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
            // const Gap(10),
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
