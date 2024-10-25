import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_presentation/core/animations/entrance_fader.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/providers/scroll_provider.dart';

class ArrowOnTop extends StatefulWidget {
  const ArrowOnTop({super.key});

  @override
  State<ArrowOnTop> createState() => _ArrowOnTopState();
}

class _ArrowOnTopState extends State<ArrowOnTop> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return Positioned(
        bottom: 50,
        right: 50,
        child: EntranceFader(
          offset: const Offset(0, 20),
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            onTap: () => scrollProvider.jumpTo(0),
            onHover: (isHovering) {
              if (isHovering) {
                setState(() => isHover = true);
              } else {
                setState(() => isHover = false);
              }
            },
            child: AvatarGlow(
              glowColor: primaryColor,
              glowRadiusFactor: 0.50,
              child: const Material(
                // Replace this child with your own
                elevation: 8.0,
                shape: CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 40,
                  child: Icon(
                    Icons.arrow_upward,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
