import 'package:flutter/material.dart';
import 'package:web_presentation/my_site.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MySite();
  }
}
