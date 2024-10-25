import 'package:flutter/material.dart';
import 'package:web_presentation/app/sections/aboutme/aboutme.dart';
import 'package:web_presentation/app/sections/certificates/certificates.dart';
import 'package:web_presentation/app/sections/contact/contact.dart';
import 'package:web_presentation/app/sections/eduWork/edu_and_work.dart';
import 'package:web_presentation/app/sections/footer/footer.dart';
import 'package:web_presentation/app/sections/home/home.dart';
import 'package:web_presentation/app/sections/projects/projects.dart';
import 'package:web_presentation/core/providers/scroll_provider.dart';

class BodyUtils {
  static List<Widget> views(ScrollProvider scrollProvider) {
    return [
      const Home(),
      const Projects(),
      const Certificates(),
      const EduAndWork(),
      const AboutMe(),
      const Contact(),
      const Footer(),
    ];
  }
}
