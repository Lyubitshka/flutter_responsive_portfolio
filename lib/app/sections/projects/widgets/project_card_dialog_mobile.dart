import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_presentation/app/utils/projects_utils.dart';
import 'package:web_presentation/core/color/colors.dart';

class ProjectCardDialogMobile extends StatefulWidget {
  final String projectName;
  final List<String> description;
  final String link;
  final ProjectUtils idx;
  final List<String> imgAssets;
  const ProjectCardDialogMobile(
      {super.key,
      required this.idx,
      required this.imgAssets,
      required this.link,
      required this.description,
      required this.projectName});

  @override
  State<ProjectCardDialogMobile> createState() =>
      _ProjectCardDialogMobileState();
}

class _ProjectCardDialogMobileState extends State<ProjectCardDialogMobile> {
  CarouselSliderController imgController = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      color: bgColor,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Sprawdzenie, czy ekran jest wąski
          bool isNarrowScreen = constraints.maxWidth < 600;

          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Tytuł projektu
              Text(
                widget.projectName,
                textAlign: TextAlign.center,
                style: GoogleFonts.chango(
                  fontSize: screenSize.height < 850 ? 35 : 55,
                  fontWeight: FontWeight.w700,
                  color: secondaryColor,
                ),
              ),
              // Przycisk
              ElevatedButton(
                onPressed: () async {
                  final Uri url = Uri.parse(widget.link);
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  widget.link,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.courierPrime(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const Gap(20),
              // Obrazy i opis w zależności od układu
              if (isNarrowScreen) ...[
                // Obrazy
                CarouselSlider.builder(
                  carouselController: imgController,
                  itemCount: widget.imgAssets.length,
                  itemBuilder: (context, index, _) {
                    return Card(
                      shadowColor: secondaryColor,
                      child: Image.asset(
                        widget.imgAssets[index],
                      ),
                    );
                  },
                  options: CarouselOptions(
                    disableCenter: true,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 4 / 3,
                  ),
                ),
                const Gap(20),
                // Opis w formie tekstu
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.description.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        widget.description[index],
                        style: GoogleFonts.josefinSans(
                          fontSize: screenSize.width < 850 ? 18 : 22,
                          fontWeight: FontWeight.w300,
                          color: secondaryColor,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    );
                  },
                ),
              ] else ...[
                // Układ horyzontalny (szeroki ekran)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Obrazy
                    Expanded(
                      child: CarouselSlider.builder(
                        carouselController: imgController,
                        itemCount: widget.imgAssets.length,
                        itemBuilder: (context, index, _) {
                          return Card(
                            shadowColor: secondaryColor,
                            child: Image.asset(
                              widget.imgAssets[index],
                            ),
                          );
                        },
                        options: CarouselOptions(
                          disableCenter: true,
                          autoPlay: true,
                          enlargeCenterPage: true,
                          aspectRatio: 4 / 3,
                        ),
                      ),
                    ),
                    const Gap(20),
                    // Opis w formie tekstu
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: widget.description.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              widget.description[index],
                              style: GoogleFonts.josefinSans(
                                fontSize: screenSize.width < 850 ? 18 : 22,
                                fontWeight: FontWeight.w300,
                                color: secondaryColor,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ],
          );
        },
      ),
    );
  }
}
