import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_presentation/app/sections/contact/widgets/contact_card.dart';
import 'package:web_presentation/app/sections/contact/widgets/custom_text_field.dart';
import 'package:web_presentation/app/utils/contact_utils.dart';
import 'package:web_presentation/core/color/colors.dart';

class ContactWeb extends StatefulWidget {
  const ContactWeb({super.key});

  @override
  State<ContactWeb> createState() => _ContactWebState();
}

class _ContactWebState extends State<ContactWeb> {
  bool isHovered = false;
  List<bool> isTab = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.sw,
      color: bgColor,
      padding:
          EdgeInsets.only(top: 5.sh, bottom: 20, left: 15.sw, right: 15.sw),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Get in touch',
            style: GoogleFonts.josefinSans(
              color: primaryColor,
              fontSize: 42,
              fontWeight: FontWeight.w700,
            ),
          ),
          Gap(1.sh),
          Text(
            'Any Questions? Feel Free to Contact',
            textAlign: TextAlign.start,
            style: GoogleFonts.josefinSans(
              color: secondaryColor,
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
          ),
          Gap(5),
          Container(
            height: 50.sh,
            padding: EdgeInsets.symmetric(horizontal: 5.sh),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: contactUtils.length,
              itemBuilder: (context, index) {
                return contactUtils[index].isLogo!
                    ? InkWell(
                        onTap: () async {
                          final Uri url = Uri.parse(contactUtils[index].link!);
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not lunch $url';
                          }
                        },
                        onHover: (value) {
                          setState(() {
                            isHovered = value;
                          });
                        },
                        child: Container(
                          // width: 10.sw,
                          padding: const EdgeInsets.symmetric(
                              vertical: 8, horizontal: 12),
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(45)),
                            border: Border.all(
                                color: primaryColor.withOpacity(0.5)),
                          ),
                          child: IntrinsicWidth(
                            child: ContactCard(
                              title: contactUtils[index].title,
                              desc: contactUtils[index].description,
                              icon: contactUtils[index].icon,
                              logoImg: contactUtils[index].logoImg,
                              isLogo: contactUtils[index].isLogo,
                            ),
                          ),
                        ))
                    : Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 12),
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(45),
                          ),
                          border: Border.all(
                              color: secondaryColor.withOpacity(0.5)),
                        ),
                        child: ContactCard(
                          title: contactUtils[index].title,
                          desc: contactUtils[index].description,
                          icon: contactUtils[index].icon,
                          logoImg: contactUtils[index].logoImg,
                          isLogo: contactUtils[index].isLogo,
                        ),
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
