import 'package:carousel_slider/carousel_slider.dart';
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
          top: 42,
          left: screenWidth < 1200 ? 8.sw : 15.sw,
          right: screenWidth < 1200 ? 8.sw : 15.sw),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Certificates',
            style: GoogleFonts.josefinSans(
              fontSize: 36,
              fontWeight: FontWeight.w900,
              color: primaryColor,
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: certificatesUtils.length,
            reverse: true,
            itemBuilder: (context, index) {
              return Card(
                surfaceTintColor: Colors.transparent,
                color: bgColor,
                margin: EdgeInsets.only(
                  bottom: 20,
                  right: screenWidth > 600 ? 12.sw : 8.sw,
                  left: 12.sw,
                ),
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      certificatesUtils[index].image,
                      width: double.infinity,
                      height: 200,
                    ),
                    ListTile(
                      leading: const Icon(Icons.verified, color: primaryColor),
                      title: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            alignment: Alignment.centerLeft),
                        child: Text(
                          certificatesUtils[index].name,
                          style: GoogleFonts.josefinSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: primaryColor,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        '${certificatesUtils[index].description}',
                        style: GoogleFonts.josefinSans(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: secondaryColor,
                        ),
                      ),
                      isThreeLine: true,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
