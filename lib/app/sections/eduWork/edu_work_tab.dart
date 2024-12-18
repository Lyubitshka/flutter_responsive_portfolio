import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/utils/edy_and_work_utils.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/constants/fonts.dart';

class EduAndWorkTab extends StatefulWidget {
  const EduAndWorkTab({super.key});

  @override
  State<EduAndWorkTab> createState() => _EduAndWorkTabState();
}

class _EduAndWorkTabState extends State<EduAndWorkTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 42),
            child: Padding(
              padding: EdgeInsets.only(left: 15.sw),
              child: Text(
                'Education & Work',
                style: titleTab,
              ),
            ),
          ),
          const Gap(12),
          CarouselSlider(
            options: CarouselOptions(
              height: 400,
              viewportFraction: 0.8,
              enableInfiniteScroll: true,
              // enlargeCenterPage: true,
              // autoPlay: true,
              // autoPlayInterval: const Duration(seconds: 10),
            ),
            items: eduworkUtils.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return _buildEduWorkCard(item);
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildEduWorkCard(dynamic item) {
    return Card(
      margin: const EdgeInsets.all(14.0),
      elevation: 5,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 26,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: primaryColor,
                  child: Icon(item.icon, color: Colors.white),
                ),
                const Gap(10),
                Text(
                  item.date,
                  style: GoogleFonts.chango(fontSize: 18, color: primaryColor),
                ),
              ],
            ),
            Gap(22),
            Text(
              item.title,
              style: subtitleTab,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              item.subtitle,
              style:
                  GoogleFonts.josefinSans(fontSize: 16, color: secondaryColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              item.description,
              style: GoogleFonts.josefinSans(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
