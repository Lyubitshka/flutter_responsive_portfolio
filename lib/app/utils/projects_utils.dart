import 'package:flutter/material.dart';
import 'package:web_presentation/core/constants/constants.dart';

class ProjectUtils {
  final String name;
  final IconData icon;
  final String description;
  final String gitLink;
  List<String> imgAsset;
  final String projectGridImg;

  ProjectUtils({
    required this.name,
    required this.gitLink,
    required this.icon,
    required this.description,
    required this.imgAsset,
    required this.projectGridImg,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    name: 'Simple Chat App',
    icon: Icons.chat,
    description: chatDesc,
    gitLink: chatGit,
    imgAsset: chatAppImgs,
    projectGridImg: chatImgMini,
  ),
  ProjectUtils(
    name: 'OpenWeather API',
    icon: Icons.sunny,
    description: weatherDesc,
    gitLink: weatherGit,
    imgAsset: waetherImgs,
    projectGridImg: weatherImgMini,
  ),
  ProjectUtils(
    name: 'Tetris Game',
    icon: Icons.rocket_launch_sharp,
    description: tetrisDesc,
    gitLink: tetrisGit,
    imgAsset: tetrisImgs,
    projectGridImg: tetrisImgMini,
  ),
  ProjectUtils(
    name: 'Cookbook',
    icon: Icons.soup_kitchen,
    description: cookBookDesc,
    gitLink: cookBookGit,
    imgAsset: cookbookImgs,
    projectGridImg: cookbookImgMini,
  ),
  ProjectUtils(
    name: 'This portfolio \n responsive flutter page',
    icon: Icons.nature_people_sharp,
    description:
        'The process of creating this portfolio page was quite a challenge for me, but it turned out to be a rewarding experience. It pushed me to think creatively and step outside my comfort zone, and in the process, I learned a lot of new skills and improved my overall understanding of design and development.',
    imgAsset: favPlacesImgs,
    gitLink: 'https://github.com/Lyubitshka/flutter_responsive_portfolio',
    projectGridImg: portfolioMini,
  ),
  ProjectUtils(
    name: 'And many more of other projects',
    icon: Icons.other_houses_sharp,
    description: 'Check out my GitHub profile.',
    imgAsset: [
      '/images/projects/chat_app_2.png',
      '/images/projects/chat_app_3.png',
    ],
    gitLink: 'https://github.com/Lyubitshka?tab=repositories',
    projectGridImg: chatImgMini,
  ),
];
