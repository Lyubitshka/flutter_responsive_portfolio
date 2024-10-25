import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_presentation/core/animations/entrance_fader.dart';
import 'package:web_presentation/core/color/colors.dart';

class CertificateCard extends StatelessWidget {
  CertificateCard({
    super.key,
    this.description,
    required this.title,
    required this.image,
    required this.isStart,
    required this.isPast,
  });
  final String title;
  final String image;
  final String? description;
  bool isStart;
  bool isPast;

  @override
  Widget build(BuildContext context) {
    return EntranceFader(
      delay: const Duration(milliseconds: 300),
      duration: const Duration(seconds: 1),
      child: Stack(children: [
        Card(
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Ink.image(
                // colorFilter:
                image: AssetImage(image),
                height: 180,
                fit: BoxFit.fitWidth,
                child: InkWell(
                  onTap: () {
                    showCertificateImg(context);
                  },
                  onHover: (value) {},
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Text(
                  description!,
                  textAlign: TextAlign.justify,
                  style: GoogleFonts.josefinSans(),
                ),
              ),

              // const Gap(5),
            ],
          ),
        ),
        Positioned(
          top: 120,
          left: isStart ? 25 : 0,
          right: isStart ? 0 : 25,
          child: InkWell(
            onHover: (value) {},
            onTap: () {
              showCertificateImg(context);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: !isPast ? primaryColor : secondaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                title,
                style: GoogleFonts.josefinSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
                textAlign: isStart ? TextAlign.end : TextAlign.start,
              ),
            ),
          ),
        ),
      ]),
    );
  }

  void showCertificateImg(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Image.asset(image),
          );
        });
  }
}
