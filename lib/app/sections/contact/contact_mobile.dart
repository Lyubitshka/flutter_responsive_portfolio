import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_presentation/app/sections/contact/widgets/contact_card.dart';
import 'package:web_presentation/app/utils/contact_utils.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/constants/fonts.dart';

class ContactMobile extends StatefulWidget {
  const ContactMobile({super.key});

  @override
  State<ContactMobile> createState() => _ContactMobileState();
}

class _ContactMobileState extends State<ContactMobile> {
  bool isHovered = false;
  List<bool> isTab = List.generate(5, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.sw,
      color: bgColor,
      padding: EdgeInsets.only(top: 5.sh, bottom: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sw),
            child: Text('Let\'s get in touch', style: titleMobile),
          ),
          Gap(1.sh),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.sw),
            child: Text('Any Questions? Feel Free to Contact',
                textAlign: TextAlign.start, style: subtitleMobile),
          ),
          Container(
            height: 80.sh,
            padding: EdgeInsets.symmetric(horizontal: 5.sh),
            child: ListView.builder(
              // shrinkWrap: true,
              itemCount: contactUtils.length,
              itemBuilder: (context, index) {
                return !contactUtils[index].isLogo!
                    ? Container(
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
                      )
                    : InkWell(
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
                        ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
