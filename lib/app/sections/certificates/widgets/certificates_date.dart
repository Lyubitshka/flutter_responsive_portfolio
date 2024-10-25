// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CertificateDate extends StatelessWidget {
  final String date;
  bool isStart;
  CertificateDate({
    super.key,
    required this.date,
    required this.isStart,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isStart ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              right: !isStart ? 0 : 30.0, left: !isStart ? 30 : 0),
          child: Text(
            date,
            style: GoogleFonts.josefinSans(fontSize: 28),
          ),
        ),
      ],
    );
  }
}
