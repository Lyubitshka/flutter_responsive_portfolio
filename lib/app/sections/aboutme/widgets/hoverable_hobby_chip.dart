import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_presentation/app/utils/about_utils.dart';

class HoverableHobbyChip extends StatefulWidget {
  final HobbyTagDetails hobby;
  const HoverableHobbyChip({super.key, required this.hobby});

  @override
  State<HoverableHobbyChip> createState() => _HoverableHobbyChipState();
}

class _HoverableHobbyChipState extends State<HoverableHobbyChip> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: EdgeInsets.symmetric(
          horizontal: isHovered ? 12 : 8,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: widget.hobby.bgColor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              widget.hobby.icon,
              color: Colors.white,
              size: 20,
            ),
            if (isHovered) ...[
              const Gap(8),
              Text(
                widget.hobby.name,
                style:
                    GoogleFonts.josefinSans(color: Colors.white, fontSize: 16),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
