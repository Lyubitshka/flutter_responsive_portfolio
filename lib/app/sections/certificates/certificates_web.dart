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

class CertificatesWeb extends StatefulWidget {
  const CertificatesWeb({super.key});

  @override
  State<CertificatesWeb> createState() => _CertificatesWebState();
}

class _CertificatesWebState extends State<CertificatesWeb> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: 100.sw,
      color: bgColor,
      padding: EdgeInsets.only(
          top: 3.sh,
          // left: screenWidth > 1450 ? 35.sw : 25.sw,
          left: 10.sw,
          right: 10.sw
          // bottom: 2.sh,
          // right: screenWidth > 1450 ? 35.sw : 25.sw
          ),
      child: Column(
        children: [
          Text(
            'My Certificates',
            style: GoogleFonts.josefinSans(
              fontSize: 42,
              fontWeight: FontWeight.w800,
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
                }
                final int lastidx = certificatesUtils.length - 1;
                if (index == lastidx) {
                  return CertificatesTimeline(
                    isFirst: true,
                    isLast: false,
                    isPast: true,
                    startChild: CertificateDate(
                      isStart: true,
                      date: certificatesUtils[index].dateOfCompletion,
                    ),
                    endChild: CertificateCard(
                      isPast: true,
                      isStart: false,
                      image: certificatesUtils[index].image,
                      title: certificatesUtils[index].name,
                      description: certificatesUtils[index].description,
                    ),
                  );
                }
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
              }),
        ],
      ),
    );
  }
}
