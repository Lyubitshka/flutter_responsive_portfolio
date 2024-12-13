import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_presentation/app/utils/projects_utils.dart';
import 'package:web_presentation/core/color/colors.dart';

class ProjectCardDialogMobile extends StatefulWidget {
  final String projectName;
  final List<String> description;
  final String link;
  final ProjectUtils idx;
  final List<String> imgAssets;
  final List<String> title;
  final List<String> techStack;
  final IconData icon;
  const ProjectCardDialogMobile({
    super.key,
    required this.idx,
    required this.imgAssets,
    required this.link,
    required this.title,
    required this.description,
    required this.projectName,
    required this.techStack,
    required this.icon,
  });

  @override
  State<ProjectCardDialogMobile> createState() =>
      _ProjectCardDialogMobileState();
}

class _ProjectCardDialogMobileState extends State<ProjectCardDialogMobile> {
  CarouselSliderController imgController = CarouselSliderController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: bgColor,
        ),
        // color: bgColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    widget.icon,
                    size: 30,
                  ),
                  Gap(12),
                  Text(
                    widget.projectName,
                    style: GoogleFonts.josefinSans(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: secondaryColor,
                    ),
                  ),
                ],
              ),
              const Gap(5),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: primaryColor,
                    width: 0.8,
                  ),
                ),
                onPressed: () async {
                  final Uri url = Uri.parse(widget.link);
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Text(
                  widget.link,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.courierPrime(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: primaryColor,
                  ),
                ),
              ),
              const Gap(8),
              CarouselSlider.builder(
                carouselController: imgController,
                itemCount: widget.idx.imgAsset.length,
                itemBuilder: (context, index, _) {
                  return Card(
                    color: bgColor,
                    shadowColor: secondaryColor,
                    child: Image.asset(
                      widget.idx.imgAsset[index],
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
              const Gap(10),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(widget.description.length, (index) {
                    return ListTile(
                      hoverColor: primaryColor,
                      onTap: () async {
                        final Uri url = Uri.parse(widget.link);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      title: Text(
                        widget.title[index],
                        style: GoogleFonts.josefinSans(
                          fontSize: screenSize.width < 850 ? 18 : 22,
                          fontWeight: FontWeight.w400,
                          color: primaryColor,
                        ),
                      ),
                      subtitle: Text(
                        widget.description[index],
                        style: GoogleFonts.josefinSans(
                          fontSize: screenSize.width < 850 ? 14 : 16,
                          fontWeight: FontWeight.w300,
                          color: secondaryColor,
                        ),
                      ),
                    );
                  }),
                ),
              ),
              const Gap(12),
              Wrap(
                spacing: 8.0, // Odległość między elementami w poziomie
                runSpacing: 8.0,
                alignment: WrapAlignment.center, // Odległość między wierszami
                children: widget.techStack.map((tech) {
                  return Chip(
                    label: Text(
                      tech,
                      style: GoogleFonts.josefinSans(
                        fontSize: screenSize.height < 850 ? 12 : 14,
                        fontWeight: FontWeight.w500,
                        color: secondaryColor,
                      ),
                    ),
                    side: const BorderSide(
                      color: primaryColor,
                      width: 0.5,
                    ),
                    backgroundColor: bgColor,
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
