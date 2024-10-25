// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/widgets/navbar_logo.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/providers/drawer_provider.dart';
import 'package:web_presentation/core/providers/scroll_provider.dart';
import 'package:web_presentation/core/responsive/responsive.dart';

class NavbarMobile extends StatefulWidget {
  const NavbarMobile({super.key});

  @override
  State<NavbarMobile> createState() => _NavbarMobileState();
}

class _NavbarMobileState extends State<NavbarMobile> {
  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);
    final scrollProvider = Provider.of<ScrollProvider>(context);
    bool isHover = false;

    return Container(
      color: bgColor,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isTablet(context) ? 5.sw : 20, vertical: 20),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                drawerProvider.key.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu_rounded)),
          const Expanded(child: SizedBox()),
          !isHover
              ? const NavbarLogo()
              : AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  transform: Matrix4.translationValues(0, isHover ? 10 : 0, 0),
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
