import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/widgets/navbar_logo.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/providers/drawer_provider.dart';
import 'package:web_presentation/core/responsive/responsive.dart';

class NavbarTablet extends StatefulWidget {
  const NavbarTablet({super.key});

  @override
  State<NavbarTablet> createState() => _NavbarTabletState();
}

class _NavbarTabletState extends State<NavbarTablet> {
  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Container(
      color: bgColor,
      padding: EdgeInsets.symmetric(
          horizontal: Responsive.isTablet(context) ? 5.sw : 10, vertical: 20),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                drawerProvider.key.currentState!.openDrawer();
              },
              icon: const Icon(Icons.menu_rounded)),
          const Expanded(child: SizedBox()),
          const NavbarLogo(),
        ],
      ),
    );
  }
}
