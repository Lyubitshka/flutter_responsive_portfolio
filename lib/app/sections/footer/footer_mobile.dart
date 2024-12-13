import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/sections/footer/widgets/navbar_footer_buttons.dart';
import 'package:web_presentation/app/utils/navbar_utils.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/constants/constants.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: 100.sw,
      height: screenWidth < 600 ? 40.sh : 30.sh,
      color: textColor,
      child: Padding(
        padding: EdgeInsets.only(
            left: screenWidth < 1000 ? 80 : 150,
            top: 4.sh,
            right: screenWidth < 1000 ? 80 : 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: SizedBox(
                // width: screenWidth < 1300 ? 150 : 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Anna\'s Portfolio',
                      style: GoogleFonts.chango(
                        fontSize: 20,
                        color: Colors.white60,
                      ),
                    ),
                    Text(
                      ' this website is made from stratch by me, if you like it let\'s talk',
                      style: GoogleFonts.josefinSans(
                        color: Colors.white30,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            // const Gap(12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...NavBarUtils.names.asMap().entries.map(
                      (e) => NavBarFooterButton(
                        label: e.value,
                        index: e.key,
                        icon: NavBarUtils.icons[e.key],
                      ),
                    ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Divider(
                thickness: 0.8,
                color: Colors.white24,
              ),
            ),
            Text(
              footerCopyright,
              style:
                  GoogleFonts.josefinSans(color: Colors.white24, fontSize: 10),
            )
          ],
        ),
      ),
    );
  }
}
