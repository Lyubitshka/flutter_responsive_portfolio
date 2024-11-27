import 'package:flutter/material.dart';
import 'package:web_presentation/app/sections/certificates/certificates_tabl.dart';
import 'package:web_presentation/app/sections/certificates/certificates_web.dart';
import 'package:web_presentation/core/responsive/responsive.dart';

class Certificates extends StatelessWidget {
  const Certificates({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: CertificatesTab(),
      tablet: CertificatesTab(),
      web: CertificatesWeb(),
    );
  }
}
