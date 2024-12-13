import 'package:flutter/material.dart';
import 'package:web_presentation/app/sections/Contact/Contact_web.dart';
import 'package:web_presentation/app/sections/contact/contact_mobile.dart';
import 'package:web_presentation/core/responsive/responsive.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: ContactMobile(), tablet: ContactMobile(), web: ContactWeb());
  }
}
