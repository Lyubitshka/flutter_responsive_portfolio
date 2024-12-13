import 'package:flutter/material.dart';
import 'package:web_presentation/core/constants/constants.dart';

class ProjectUtils {
  final String name;
  List<String> title;
  final IconData icon;
  List<String> description;
  final String gitLink;
  List<String> imgAsset;
  final String projectGridImg;
  List<String> techStack;

  ProjectUtils(
      {required this.name,
      required this.title,
      required this.gitLink,
      required this.icon,
      required this.description,
      required this.imgAsset,
      required this.projectGridImg,
      required this.techStack});
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    name: 'Simple Chat App',
    title: ['A real-time chat application built with Flutter,'],
    icon: Icons.chat,
    description: [chatDesc],
    gitLink: chatGit,
    imgAsset: chatAppImgs,
    projectGridImg: '/images/projects/chat_app_1.png',
    techStack: [
      "Firebase CLI & SKD",
      "Firebase Authentication",
      "Firebase Storage",
      "Firestore",
      "push Notifications",
      'Firebase Cloud Messaging'
    ],
  ),
  ProjectUtils(
    name: 'Grocery List App',
    title: ['Simple grocery list management app built with Flutter.'],
    icon: Icons.shopping_basket_sharp,
    description: [groceryDesc],
    gitLink: groceryGit,
    imgAsset: groceryImgs,
    projectGridImg: '/images/projects/grocery_1.png',
    techStack: [
      'shared-preferences',
      '➕ Add New Items',
      '🖊️ Edit Items',
      '➖ Delete Items',
      '✅ Checkbox to Mark Items',
      '📲 Categories',
    ],
  ),
  // ProjectUtils(
  //   name: 'OpenWeather API',
  //   icon: Icons.sunny,
  //   description: [weatherDesc],
  //   gitLink: weatherGit,
  //   imgAsset: waetherImgs,
  //   projectGridImg: weatherImgMini,
  // ),
  ProjectUtils(
    name: 'Favorite Places',
    title: ['A small app for saving your favorite places.'],
    icon: Icons.pin_drop_outlined,
    description: [
      'It leverages native device features like the camera (via the image_picker package) for capturing pictures and the location package to fetch the user\'s current location. The app also integrates with the Google Maps API for a seamless mapping experience.',
    ],
    gitLink: 'https://github.com/Lyubitshka/flutter_favorite_places_app',
    imgAsset: [
      '/images/projects/favpl_1.png',
      '/images/projects/favpl_2.png',
      '/images/projects/favpl_3.png',
      '/images/projects/favpl_4.png',
    ],
    projectGridImg: '/images/projects/favpl_4.png',
    techStack: ["image-picker", 'location', 'Google Maps API'],
  ),
  // ProjectUtils(
  //   name: 'Tetris Game',
  //   title: [''],
  //   icon: Icons.rocket_launch_sharp,
  //   description: [

  //   ],
  //   gitLink: tetrisGit,
  //   imgAsset: tetrisImgs,
  //   projectGridImg: tetrisImgMini,
  //   techStack: [],
  // ),
  ProjectUtils(
    name: 'Cookbook',
    title: ['Just a simple cookbook on your phone,'],
    icon: Icons.soup_kitchen,
    description: [cookBookDesc],
    gitLink: cookBookGit,
    imgAsset: cookbookImgs,
    projectGridImg: '/images/projects/cookbook_1.png',
    techStack: [
      'navigation in multiple-screens',
      'state management with Riverpod',
      'Animated Builder()',
      'AnimatedSwitcher()',
    ],
  ),
  ProjectUtils(
    name: 'My Flutter Portfolio',
    title: [
      'The process of creating this portfolio page was quite a challenge for me,'
    ],
    icon: Icons.nature_people_sharp,
    description: [
      'but it turned out to be a rewarding experience. It pushed me to think creatively and step outside my comfort zone, and in the process, I learned a lot of new skills and improved my overall understanding of design and development.'
    ],
    imgAsset: portfolioImgs,
    gitLink: 'https://github.com/Lyubitshka/flutter_responsive_portfolio',
    projectGridImg: '/images/projects/portfolio3.png',
    techStack: ['responsive UI', 'BLoC', 'animations'],
  ),
  ProjectUtils(
    name: 'Other projects',
    title: [
      '🛠️ My Workout Diary',
      "🌤️ OpenWeather API",
      '🎮 Tetris Game',
      '🪙 Currency converter',
      '🧊 Roll a dice'
    ],
    icon: Icons.other_houses_sharp,
    description: [
      'A mobile app to track your daily workouts and stay motivated with detailed performance statistics.',
      'Flutter app can be integrated using the BLoC pattern to handle state management. It fetches weather data asynchronously and updates the UI by emitting different states such as loading, success, or error based on the API response.',
      tetrisDesc,
      'A simple, interactive currency converter built using Flutter and a currency conversion API.',
      ''
    ],
    techStack: [],
    imgAsset: [
      '/images/projects/myworkout_1.png',
      '/images/projects/myworkout_2.png',
      '/images/projects/myworkout_3.png',
      '/images/projects/kantor_1.png',
      '/images/projects/kantor_2.png',
      '/images/projects/weather_1.png',
      '/images/projects/weather_2.png',
      '/images/projects/weather_3.png',
      '/images/projects/kostka.png',
      ...tetrisImgs
    ],
    gitLink: 'https://github.com/Lyubitshka?tab=repositories',
    projectGridImg: '/images/projects/myworkout_1.png',
  ),
];
