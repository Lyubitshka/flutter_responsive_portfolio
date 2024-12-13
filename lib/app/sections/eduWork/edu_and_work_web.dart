import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/utils/edy_and_work_utils.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/constants/fonts.dart';

class EduAndWorkWeb extends StatefulWidget {
  const EduAndWorkWeb({super.key});

  @override
  State<EduAndWorkWeb> createState() => _EduAndWorkWebState();
}

class _EduAndWorkWebState extends State<EduAndWorkWeb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.sw,
      height: 55.sh,
      color: bgColor,
      padding: EdgeInsets.symmetric(vertical: 42),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sw),
            child: Text('Education & Work', style: titleWeb),
          ),
          Gap(16),
          CarouselSlider(
            options: CarouselOptions(
              height: 400,
              viewportFraction: 0.8,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
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
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
      elevation: 5,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundColor: primaryColor,
                  child: Icon(item.icon, color: Colors.white),
                ),
                const Gap(16),
                Text(
                  item.date,
                  style: specialTxtWeb,
                ),
              ],
            ),
            Gap(22),
            Text(
              item.title,
              style: subtitleWeb,
              textAlign: TextAlign.center,
            ),
            const Gap(10),
            Text(
              item.subtitle,
              style:
                  GoogleFonts.josefinSans(fontSize: 16, color: secondaryColor),
              textAlign: TextAlign.center,
            ),
            const Gap(10),
            Text(
              item.description,
              style: textWeb,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
