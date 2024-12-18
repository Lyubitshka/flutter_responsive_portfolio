import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/sections/certificates/widgets/certificate_card.dart';
import 'package:web_presentation/app/sections/certificates/widgets/certificates_date.dart';
import 'package:web_presentation/app/sections/certificates/widgets/certificates_timeline.dart';
import 'package:web_presentation/app/utils/certificates_utils.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/constants/fonts.dart';

import '../../../core/constants/constants.dart';

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
      constraints: const BoxConstraints(maxHeight: double.infinity),
      color: bgColor,
      padding: EdgeInsets.only(
        top: 3.sh,
        left: 15.sw,
        right: 15.sw,
        bottom: 42,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('My Certificates', style: titleWeb),
          Gap(12),
          Padding(
            padding: EdgeInsets.only(right: 25.sw),
            child: Text(certifisatesDescription, style: textSmallWeb),
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
