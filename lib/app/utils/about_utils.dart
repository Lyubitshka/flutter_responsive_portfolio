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
    name: 'web developement',
    icon: Icons.web_asset,
    bgColor: primaryColor,
  ),
  HobbyTagDetails(
    name: 'app developement',
    icon: Icons.app_shortcut,
    bgColor: secondaryColor,
  ),
  HobbyTagDetails(
    name: 'learning languages',
    icon: Icons.translate,
    bgColor: const Color.fromARGB(255, 52, 132, 114),
  ),
  HobbyTagDetails(
    name: 'different cultures',
    icon: Icons.photo_album,
    bgColor: const Color.fromARGB(255, 52, 132, 114),
  ),
  HobbyTagDetails(
    name: 'unordinary travelling',
    icon: Icons.translate,
    bgColor: const Color.fromARGB(255, 52, 132, 97),
  ),
  HobbyTagDetails(
    name: 'traditional medicine',
    icon: Icons.medication,
    bgColor: const Color.fromARGB(255, 52, 80, 132),
  ),
  HobbyTagDetails(
    name: 'gardening & herbs',
    icon: Icons.medication,
    bgColor: const Color.fromARGB(255, 52, 80, 132),
  ),
  HobbyTagDetails(
    name: 'photography',
    icon: Icons.medication,
    bgColor: const Color.fromARGB(255, 52, 80, 132),
  ),
  HobbyTagDetails(
    name: 'brain-gut connection',
    icon: Icons.medication,
    bgColor: const Color.fromARGB(255, 52, 80, 132),
  ),
  HobbyTagDetails(
    name: 'biohacking',
    icon: Icons.keyboard_command_key_outlined,
    bgColor: const Color.fromARGB(255, 52, 80, 132),
  ),
];

//////
//////
//////
//////
//////

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

List<AboutUtils> aboutUtils = [
  AboutUtils(
    name: 'Graphic Design',
    percent: 0.75,
    percentText: "75 %",
    color: const Color(0xFFFCA61F),
  ),
  AboutUtils(
    name: 'Web Designing',
    percent: 0.95,
    percentText: "95 %",
    color: const Color(0xFF6F34FE),
  ),
  AboutUtils(
    name: 'Branding Design',
    percent: 0.85,
    percentText: "85 %",
    color: const Color(0xFF56CBBD),
  ),
  AboutUtils(
    name: 'Web Development',
    percent: 0.8,
    percentText: "80 %",
    color: const Color(0xFF3F396D),
  ),
];
