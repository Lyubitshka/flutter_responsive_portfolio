import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/utils/edy_and_work_utils.dart';
import 'package:web_presentation/core/color/colors.dart';

class EduWorkCard extends StatelessWidget {
  const EduWorkCard(
      {super.key,
      required this.date,
      required this.title,
      required this.subtitle,
      required this.description});
  final String date;
  final String title;
  final String subtitle;
  final String description;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        width: 100.sw,
        height: 100.sh,
        child: Stack(
          children: [
            Container(
              // width: 10.sw,
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: primaryColor.withOpacity(0.6)),
              child: Text(
                date,
                textAlign: TextAlign.center,
                style: GoogleFonts.chango(fontSize: 25),
              ),
            ),
            Positioned(
              left: 20.sw,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    title,
                    style: GoogleFonts.josefinSans(
                        fontWeight: FontWeight.w700, fontSize: 25),
                  ),
                ),
              ),
            ),
            Positioned(
              // right: 25.sw,
              left: 140,
              top: 50,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: primaryColor.withOpacity(0.8)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    subtitle,
                    style: GoogleFonts.josefinSans(fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
            Positioned(
              // right: 25.sw,
              left: 120,
              top: 78,
              child: Container(
                width: 620,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: primaryColor.withOpacity(0.3),
                    spreadRadius: 40,
                    blurRadius: 90,
                    // offset: const Offset(10, 10),
                  )
                ]),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    description,
                    style: GoogleFonts.josefinSans(),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
