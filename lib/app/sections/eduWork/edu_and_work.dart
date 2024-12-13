import 'package:flutter/material.dart';
import 'package:web_presentation/app/sections/eduWork/edu_and_work_web.dart';
import 'package:web_presentation/app/sections/eduWork/edu_work_mobile.dart';
import 'package:web_presentation/app/sections/eduWork/edu_work_tab.dart';
import 'package:web_presentation/core/responsive/responsive.dart';

class EduAndWork extends StatelessWidget {
  const EduAndWork({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: EduWorkMobile(),
      tablet: EduAndWorkTab(),
      web: EduAndWorkWeb(),
    );
  }
}
