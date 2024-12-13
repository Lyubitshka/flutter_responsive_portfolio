import 'package:flutter/material.dart';
import 'package:web_presentation/core/color/colors.dart';

class AboutMeCard {
  final String title;
  final String description;
  final String img;

  AboutMeCard(
      {required this.title, required this.description, required this.img});
}

final List<AboutMeCard> cards = [
  AboutMeCard(
      title: 'learning',
      description: '',
      img: 'assets/images/aboutme/construction.png'),
  AboutMeCard(
      title: 'learning',
      description: '',
      img: 'assets/images/aboutme/construction.png'),
  AboutMeCard(
      title: 'learning',
      description: '',
      img: 'assets/images/aboutme/construction.png'),
  AboutMeCard(
      title: 'learning',
      description: '',
      img: 'assets/images/aboutme/construction.png'),
  AboutMeCard(
      title: 'learning',
      description: '',
      img: 'assets/images/aboutme/construction.png'),
];

final List<Color> kMixedColors = [
  const Color(0xff71A5D7),
  const Color(0xff72CCD4),
  const Color(0xffFBAB57),
  const Color(0xffF8B993),
  const Color(0xff962D17),
  const Color(0xffc657fb),
  const Color(0xfffb8457),
];

class HobbyTagDetails {
  final String name;
  final IconData icon;
  final Color bgColor;

  HobbyTagDetails(
      {required this.name, required this.icon, required this.bgColor});
}

List<HobbyTagDetails> hobbies = [
  HobbyTagDetails(
    name: 'App & Web Development',
    icon: Icons.code,
    bgColor: primaryColor.withOpacity(0.9),
  ),
  HobbyTagDetails(
    name: 'Learning Languages',
    icon: Icons.language,
    bgColor: secondaryColor.withOpacity(0.8),
  ),
  HobbyTagDetails(
    name: 'Different Cultures',
    icon: Icons.travel_explore,
    bgColor: const Color.fromARGB(255, 118, 174, 175),
  ),
  HobbyTagDetails(
    name: 'Unordinary Travelling',
    icon: Icons.flight_takeoff,
    bgColor: const Color.fromARGB(255, 100, 165, 140),
  ),
  HobbyTagDetails(
    name: 'Traditional Medicine',
    icon: Icons.healing,
    bgColor: const Color.fromARGB(255, 85, 147, 199),
  ),
  HobbyTagDetails(
    name: 'Gardening & Herbs',
    icon: Icons.eco,
    bgColor: const Color.fromARGB(255, 75, 135, 92),
  ),
  HobbyTagDetails(
    name: 'Photography',
    icon: Icons.camera_alt,
    bgColor: const Color.fromARGB(255, 117, 129, 155),
  ),
  HobbyTagDetails(
    name: 'Brain-Gut Connection',
    icon: Icons.psychology,
    bgColor: const Color.fromARGB(255, 140, 90, 132),
  ),
  HobbyTagDetails(
    name: 'Biohacking',
    icon: Icons.biotech,
    bgColor: const Color.fromARGB(255, 70, 100, 150),
  ),
];

class AboutUtils {
  final String name;
  final double percent;
  final String percentText;
  final Color color;

  AboutUtils({
    required this.name,
    required this.percent,
    required this.percentText,
    required this.color,
  });
}

// List<AboutUtils> aboutUtils = [
//   AboutUtils(
//     name: 'Graphic Design',
//     percent: 0.75,
//     percentText: "75 %",
//     color: const Color(0xFFFCA61F),
//   ),
//   AboutUtils(
//     name: 'Web Designing',
//     percent: 0.95,
//     percentText: "95 %",
//     color: const Color(0xFF6F34FE),
//   ),
//   AboutUtils(
//     name: 'Branding Design',
//     percent: 0.85,
//     percentText: "85 %",
//     color: const Color(0xFF56CBBD),
//   ),
//   AboutUtils(
//     name: 'Web Development',
//     percent: 0.8,
//     percentText: "80 %",
//     color: const Color(0xFF3F396D),
//   ),
// ];
