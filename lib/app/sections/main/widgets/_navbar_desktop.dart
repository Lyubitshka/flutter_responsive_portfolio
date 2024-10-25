import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/utils/navbar_utils.dart';
import 'package:web_presentation/app/widgets/navbar_actions_button.dart';
import 'package:web_presentation/app/widgets/navbar_logo.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/providers/drawer_provider.dart';
import 'package:web_presentation/core/providers/scroll_provider.dart';
import 'package:web_presentation/core/responsive/responsive.dart';

class NavbarDesktop extends StatefulWidget {
  const NavbarDesktop({super.key});

  @override
  State<NavbarDesktop> createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<NavbarDesktop> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return Container(
      height: 64,
      color: bgTransparent,
      padding: EdgeInsets.symmetric(horizontal: 60.sw / 12),
      child: Row(
        children: [
          const NavbarLogo(),
          const Expanded(child: SizedBox()),
          ...NavBarUtils.names.asMap().entries.map(
                (e) => NavBarActionButton(
                  label: e.value,
                  index: e.key,
                ),
              ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            transform: Matrix4.translationValues(
                isHover ? 10 : 0, isHover ? 10 : 0, 0),
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: isHover ? secondaryColor : primaryColor,
                borderRadius: BorderRadius.circular(42),
              ),
              child: InkWell(
                onHover: (value) {
                  setState(() {
                    isHover = value;
                  });
                },
                customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onTap: () {
                  scrollProvider.jumpTo(5);
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Text(
                    'Contact',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
