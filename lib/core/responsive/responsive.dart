import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget web;
  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.web,
  });

  // screen sizes
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024 &&
      MediaQuery.of(context).size.width >= 600;

  static bool isWeb(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    if (width >= 1024) {
      return web;
    } else if (width < 1024 && width >= 600) {
      return tablet;
    } else {
      return mobile;
    }
  }
}
