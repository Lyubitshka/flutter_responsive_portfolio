import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/core/constants/constants.dart';

part 'homepage_web.widgets.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      color: const Color(0xffFEE5CA),
      child: ScrollTransformView(
        children: [
          ScrollTransformItem(
            builder: (scrollOffset) {
              final offScreenPercentage =
                  min(scrollOffset / screenSize.height, 1.0);
              return Image.asset(
                'assets/images/background.jpg',
                height: screenSize.height -
                    (screenSize.height * 0.2 * offScreenPercentage),
                width: screenSize.width -
                    (screenSize.height * 0.5 * offScreenPercentage),
                fit: BoxFit.cover,
              );
            },
            offsetBuilder: (scrollOffset) {
              final offScreenPercentage =
                  min(scrollOffset / screenSize.height, 1.0);
              final heightShrinkageAmount =
                  screenSize.height * 0.2 * offScreenPercentage;

              final bool startMovingImg = scrollOffset >= screenSize.height;
              final double onScreenOffset =
                  scrollOffset + heightShrinkageAmount / 2;

              return Offset(
                0,
                !startMovingImg
                    ? onScreenOffset
                    : onScreenOffset - (scrollOffset - screenSize.height),
              );
            },
            // scaleBuilder: (scrollOffset) {

            // },
          ),
          ScrollTransformItem(
            builder: (scrollOffset) {
              return const OverlayTextSection();
            },
            offsetBuilder: (scrollOffset) => Offset(0, -scrollOffset),
          ),
          ScrollTransformItem(
            builder: (scrollOffset) {
              return const BottomSection();
            },
            // offsetBuilder: (scrollOffset) => Offset(0, scrollOffset),
          ),
        ],
      ),
    );
  }
}
