import 'package:flutter/material.dart';
import 'package:web_presentation/app/sections/projects/projects_mobile.dart';
import 'package:web_presentation/app/sections/projects/projects_tab.dart';
import 'package:web_presentation/app/sections/projects/projects_web.dart';
import 'package:web_presentation/core/responsive/responsive.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ProjectsMobile(),
      tablet: ProjectsTab(),
      web: ProjectsWeb(),
    );
  }
}
