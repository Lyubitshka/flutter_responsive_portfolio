import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/utils/edy_and_work_utils.dart';
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
      width: 100.sw,
      height: 50.sh,
      color: bgColor,
      padding: EdgeInsets.symmetric(horizontal: 15.sw, vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education & Work',
            style: GoogleFonts.josefinSans(
              fontSize: 42,
              fontWeight: FontWeight.w700,
              color: primaryColor,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                  eduworkUtils.length,
                  (index) => _buildEduWorkCard(eduworkUtils[index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEduWorkCard(EduWorkUtils item) {
    return Container(
      width: 20.sw,
      padding: EdgeInsets.only(left: 20, right: 20),
      margin: EdgeInsets.only(bottom: 20, left: 15.sw, right: 15.sw),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(15),
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
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.calendar_today,
                  color: secondaryColor,
                  size: 18,
                ),
                const SizedBox(width: 8),
                Text(
                  item.date,
                  style: GoogleFonts.josefinSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: secondaryColor,
                  ),
                ),
                const SizedBox(width: 22),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          item.icon,
                          color: primaryColor,
                          size: 42,
                        ),
                        const Gap(12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.title,
                              style: GoogleFonts.josefinSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 22,
                                color: primaryColor,
                              ),
                            ),
                            Text(
                              item.subtitle,
                              style: GoogleFonts.josefinSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: secondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              item.description,
              style: GoogleFonts.josefinSans(
                fontSize: 16,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
