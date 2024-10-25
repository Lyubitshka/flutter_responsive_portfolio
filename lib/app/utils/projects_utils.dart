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
    name: 'This portfolio web/tablet/mobile page',
    icon: Icons.nature_people_sharp,
    description:
        'Simple application for chatting with friends. Providing user accounts creation with shots from mobile phone camera and chat history due to used database.',
    imgAsset: favPlacesImgs,
    gitLink: 'https://github.com/Lyubitshka/simple_chat_app_flutter',
    projectGridImg: chatImgMini,
  ),
  ProjectUtils(
    name: 'And many more of other mini projects.. click to read more',
    icon: Icons.other_houses_sharp,
    description: 'As atime goes by ',
    imgAsset: [
      '/images/projects/chat_app_2.png',
      '/images/projects/chat_app_3.png',
    ],
    gitLink: 'https://github.com/Lyubitshka/simple_chat_app_flutter',
    projectGridImg: chatImgMini,
  ),
];
