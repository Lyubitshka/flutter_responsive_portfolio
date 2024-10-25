import 'package:flutter/material.dart';
import 'package:web_presentation/app/sections/footer/footer_web.dart';
import 'package:web_presentation/core/responsive/responsive.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: FooterWeb(),
      tablet: FooterWeb(),
      web: FooterWeb(),
    );
  }
}
