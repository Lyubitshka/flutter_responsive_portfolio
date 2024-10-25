import 'package:flutter/material.dart';

class ContactUtils {
  final String title;
  final IconData? icon;
  final String? logoImg;
  final String description;
  bool? isLogo;
  // final String address;
  // final String phoneNum;
  // final String email;
  // final String linkedIn;
  // final String github;

  ContactUtils(
      {required this.title,
      this.icon,
      this.logoImg,
      this.isLogo,
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
    description: '+48 512 *** ***',
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
    description: 'linkedin.com/in/\nanna-doroszewska-19ba041a1',
    logoImg: '/images/logo/linkedin.png',
    isLogo: true,
  ),
  ContactUtils(
      title: 'Github',
      description: 'github.com/Lyubitshka',
      logoImg: '/images/logo/github.png',
      isLogo: true),
];
