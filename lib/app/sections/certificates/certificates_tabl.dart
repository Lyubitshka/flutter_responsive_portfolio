import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:web_presentation/app/sections/certificates/widgets/certificate_card.dart';
import 'package:web_presentation/app/sections/certificates/widgets/certificates_date.dart';
import 'package:web_presentation/app/sections/certificates/widgets/certificates_timeline.dart';
import 'package:web_presentation/app/utils/certificates_utils.dart';
import 'package:web_presentation/core/color/colors.dart';

class CertificatesTab extends StatefulWidget {
  const CertificatesTab({super.key});

  @override
  State<CertificatesTab> createState() => _CertificatesTabState();
}

class _CertificatesTabState extends State<CertificatesTab> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 100.sw,
      color: bgColor,
      padding: EdgeInsets.only(
          left: screenWidth < 1200 ? 8.sw : 15.sw,
          right: screenWidth < 1200 ? 8.sw : 15.sw),
      child: Column(
        children: [
          Text(
            'My Certificates',
            style: GoogleFonts.josefinSans(
              fontSize: 32,
              fontWeight: FontWeight.w900,
              color: primaryColor,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: certificatesUtils.length,
            reverse: true,
            itemBuilder: (context, index) {
              if (index == 0) {
                return CertificatesTimeline(
                  isFirst: false,
                  isLast: true,
                  isPast: false,
                  startChild: CertificateCard(
                    isPast: true,
                    isStart: true,
                    image: certificatesUtils[index].image,
                    title: certificatesUtils[index].name,
                    description: certificatesUtils[index].description,
                  ),
                  endChild: CertificateDate(
                    isStart: false,
                    date: certificatesUtils[index].dateOfCompletion,
                  ),
                );
              }
              if (index.isEven) {
                return CertificatesTimeline(
                  isFirst: false,
                  isLast: false,
                  isPast: false,
                  startChild: CertificateCard(
                    isPast: false,
                    isStart: true,
                    image: certificatesUtils[index].image,
                    title: certificatesUtils[index].name,
                    description: certificatesUtils[index].description,
                  ),
                  endChild: CertificateDate(
                    isStart: false,
                    date: certificatesUtils[index].dateOfCompletion,
                  ),
                );
              } else {
                return CertificatesTimeline(
                  isFirst: false,
                  isLast: false,
                  isPast: false,
                  startChild: CertificateDate(
                    isStart: true,
                    date: certificatesUtils[index].dateOfCompletion,
                  ),
                  endChild: CertificateCard(
                    isPast: false,
                    isStart: false,
                    image: certificatesUtils[index].image,
                    title: certificatesUtils[index].name,
                    description: certificatesUtils[index].description,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
