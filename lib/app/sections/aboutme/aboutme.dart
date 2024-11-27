import 'package:flutter/material.dart';
import 'package:web_presentation/app/sections/aboutme/aboutme_mobile.dart';
import 'package:web_presentation/app/sections/aboutme/aboutme_web.dart';
import 'package:web_presentation/core/responsive/responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: AboutMeMobile(), tablet: AboutMeMobile(), web: AboutMeWeb());
  }
}
