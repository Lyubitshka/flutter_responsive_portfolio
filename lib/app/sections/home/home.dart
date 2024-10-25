import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_presentation/app/sections/home/home_mobile.dart';
import 'package:web_presentation/app/sections/home/home_tab.dart';
import 'package:web_presentation/app/sections/home/home_web.dart';
import 'package:web_presentation/core/providers/scroll_provider.dart';
import 'package:web_presentation/core/responsive/responsive.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: HomeMobile(),
      tablet: HomeTab(),
      web: HomeWeb(),
    );
  }
}
