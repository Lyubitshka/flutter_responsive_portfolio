import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/utils/navbar_utils.dart';
import 'package:web_presentation/app/widgets/navbar_logo.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/providers/scroll_provider.dart';

class MobileDrawer extends StatefulWidget {
  const MobileDrawer({
    super.key,
  });

  @override
  State<MobileDrawer> createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    final ScrollProvider scrollProvider = Provider.of<ScrollProvider>(context);
    return Drawer(
      child: Material(
        color: bgColor,
        child: Padding(
          padding: EdgeInsets.only(top: 3.sh),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text(
                  'Anna\'s\nPortfolio',
                  style: GoogleFonts.chango(
                    fontSize: 22,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              // const Divider(),
              SizedBox(height: 2.sh),
              ...NavBarUtils.names.asMap().entries.map(
                    (e) => MaterialButton(
                      onPressed: () {
                        scrollProvider.jumpTo(e.key);
                      },
                      child: ListTile(
                        leading: Icon(
                          NavBarUtils.icons[e.key],
                          color: Colors.black,
                        ),
                        title: Text(
                          e.value,
                          style: GoogleFonts.josefinSans(),
                        ),
                      ),
                    ),
                  ),
              Positioned(
                // left: -100,
                bottom: 15,
                child: Image.asset(
                  'images/drawer_img.png',
                  color:
                      const Color.fromARGB(255, 255, 255, 255).withOpacity(0.7),
                  // height: 10.sh,
                  colorBlendMode: BlendMode.modulate,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
