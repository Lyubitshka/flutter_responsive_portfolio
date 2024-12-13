import 'package:flutter/material.dart';

class ContactUtils {
  final String title;
  final IconData? icon;
  final String? logoImg;
  final String description;
  bool? isLogo;
  String? link;

  ContactUtils(
      {required this.title,
      this.icon,
      this.logoImg,
      this.isLogo,
      this.link,
      required this.description});
}

List<ContactUtils> contactUtils = [
  ContactUtils(
    title: 'Address',
    icon: Icons.home,
    description: 'Wroclaw, PL',
    isLogo: false,
  ),
  ContactUtils(
    title: 'Phone',
    description: '+48 512 469 080',
    icon: Icons.phone_iphone,
    isLogo: false,
  ),
  ContactUtils(
    title: 'E-mail',
    description: 'an.doroszewska@gmail.com',
    icon: Icons.email,
    isLogo: false,
  ),
  ContactUtils(
      title: 'LinkedIn',
      description: 'linkedin.com/in/anna-doroszewska-19ba041a1',
      logoImg: '/images/logo/linkedin.png',
      isLogo: true,
      link: 'https://www.linkedin.com/in/anna-doroszewska-19ba041a1'),
  ContactUtils(
      title: 'Github',
      description: 'github.com/Lyubitshka',
      logoImg: '/images/logo/github.png',
      isLogo: true,
      link: 'https://www.github.com/Lyubitshka'),
];
