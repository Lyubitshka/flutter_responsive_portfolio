import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_presentation/app/utils/projects_utils.dart';
import 'package:web_presentation/core/color/colors.dart';

class ProjectCardDialog extends StatefulWidget {
  final String projectName;
  final String description;
  final String link;
  final ProjectUtils idx;
  final List<String> imgAssets;
  const ProjectCardDialog(
      {super.key,
      required this.idx,
      required this.imgAssets,
      required this.link,
      required this.description,
      required this.projectName});

  @override
  State<ProjectCardDialog> createState() => _ProjectCardDialogDialogState();
}

class _ProjectCardDialogDialogState extends State<ProjectCardDialog> {
  CarouselController imgController = CarouselController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      color: bgColor,
      width: 70.sh,
      margin: EdgeInsets.symmetric(horizontal: 2.sh, vertical: 5.sw),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            widget.projectName,
            textAlign: TextAlign.center,
            style: GoogleFonts.chango(
              fontSize: screenSize.height < 850 ? 35 : 55,
              fontWeight: FontWeight.w700,
              color: secondaryColor,
            ),
            // textAlign: TextAlign.right,
          ),
          ElevatedButton(
            onPressed: () async {
              final Uri url = Uri.parse(widget.link);
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                throw 'Couldn not lunch $url';
              }
            },
            child: Text(
              widget.link,
              textAlign: TextAlign.center,
              style: GoogleFonts.courierPrime(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: primaryColor,
              ),

              // textAlign: TextAlign.right,
            ),
          ),
          const Gap(5),
          SingleChildScrollView(
              child: Row(children: [
            Expanded(
              child: CarouselSlider.builder(
                carouselController: imgController,
                itemCount: widget.idx.imgAsset.length,
                itemBuilder: (context, index, _) {
                  return Card(
                      shadowColor: secondaryColor,
                      child: Image.asset(
                        widget.idx.imgAsset[index],
                      ));
                },
                options: CarouselOptions(
                    disableCenter: true,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 4 / 3),
              ),
            ),
            const Gap(20),
            SizedBox(
              width: 450,
              child: Text(
                widget.description,
                style: GoogleFonts.josefinSans(
                  fontSize: screenSize.width < 850 ? 22 : 25,
                  fontWeight: FontWeight.w300,
                  color: secondaryColor,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ]))
        ],
      ),
    );
  }
}
