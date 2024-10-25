import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/sections/footer/widgets/navbar_footer_buttons.dart';
import 'package:web_presentation/app/utils/navbar_utils.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/constants/constants.dart';

class FooterWeb extends StatelessWidget {
  const FooterWeb({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: 100.sw,
      height: screenWidth < 1300 ? 30.sh : 30.sh,
      color: textColor,
      child: Padding(
        padding: EdgeInsets.only(
            left: screenWidth < 1000 ? 80 : 150,
            top: 4.sh,
            right: screenWidth < 1000 ? 80 : 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: SizedBox(
                // width: screenWidth < 1300 ? 150 : 300,
                child: Column(
                  children: [
                    Text(
                      'Anna\'s Portfolio',
                      style: GoogleFonts.chango(
                        fontSize: 35,
                        color: Colors.white60,
                      ),
                    ),
                    Text(
                        ' this website is made from stratch by me, if you like it let\'s talk',
                        style: GoogleFonts.josefinSans(color: Colors.white30))
                  ],
                ),
              ),
            ),
            const Gap(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...NavBarUtils.names
                    .asMap()
                    .entries
                    .map((e) => NavBarFooterButton(
                          label: e.value,
                          index: e.key,
                          icon: NavBarUtils.icons[e.key],
                        ))
              ],
            ),
            const Gap(15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Divider(
                thickness: 0.8,
                color: Colors.white38,
              ),
            ),
            // const Gap(5),
            Text(
              footerCopyright,
              style: GoogleFonts.josefinSans(color: Colors.white24),
            )
          ],
        ),
      ),
    );
  }
}
