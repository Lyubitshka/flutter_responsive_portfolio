import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_presentation/core/constants/constants.dart';

List<TyperAnimatedText> webList = [
  TyperAnimatedText(
    animationtxt1,
    speed: const Duration(milliseconds: 50),
    textStyle: const TextStyle(fontSize: 30),
  ),
  TyperAnimatedText(
    animationtxt2,
    speed: const Duration(milliseconds: 50),
    textStyle: GoogleFonts.poppins(),
  ),
  TyperAnimatedText(
    animationtxt3,
    speed: const Duration(milliseconds: 50),
    textStyle: GoogleFonts.poppins(),
  ),
];

List<TyperAnimatedText> tabletList = [
  TyperAnimatedText(
    animationtxt1,
    speed: const Duration(milliseconds: 50),
    textStyle: const TextStyle(fontSize: 20),
  ),
  TyperAnimatedText(
    animationtxt2,
    speed: const Duration(milliseconds: 50),
    textStyle: GoogleFonts.poppins(),
  ),
  TyperAnimatedText(
    animationtxt3,
    speed: const Duration(milliseconds: 50),
    textStyle: GoogleFonts.poppins(),
  ),
];

List<TyperAnimatedText> mobileList = [
  TyperAnimatedText(
    animationtxt1,
    speed: const Duration(milliseconds: 50),
    textStyle: const TextStyle(fontSize: 10),
  ),
  TyperAnimatedText(
    animationtxt2,
    speed: const Duration(milliseconds: 50),
    textStyle: GoogleFonts.poppins(),
  ),
  TyperAnimatedText(
    animationtxt3,
    speed: const Duration(milliseconds: 50),
    textStyle: GoogleFonts.poppins(),
  ),
];
