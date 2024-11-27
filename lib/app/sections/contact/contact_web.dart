import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
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
          EdgeInsets.only(top: 8.sh, bottom: 8.sh, left: 10.sw, right: 10.sw),
      child: Column(
        children: [
          Text(
            'Get in touch',
            style: GoogleFonts.josefinSans(
              color: secondaryColor,
              fontSize: 22,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(
            height: 1.sh,
          ),
          Text(
            'Any Questions? Feel Free to Contact',
            textAlign: TextAlign.start,
            style: GoogleFonts.josefinSans(
              color: primaryColor,
              fontSize: 42,
              fontWeight: FontWeight.w900,
            ),
          ),
          const Gap(12),
          Container(
            height: 500,
            padding: EdgeInsets.symmetric(horizontal: 5.sh),
            child: ListView.builder(
              itemCount: contactUtils.length,
              itemBuilder: (context, index) {
                return contactUtils[index].isLogo!
                    ? InkWell(
                        onTap: () {},
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
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(45),
                                topRight: Radius.circular(45),
                                topLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8)),
                            border: Border.all(
                                color: primaryColor.withOpacity(0.5)),
                          ),
                          child: ContactCard(
                            title: contactUtils[index].title,
                            desc: contactUtils[index].description,
                            icon: contactUtils[index].icon,
                            logoImg: contactUtils[index].logoImg,
                            isLogo: contactUtils[index].isLogo,
                          ),
                        ))
                    : Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 12),
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(45),
                              topRight: Radius.circular(45),
                              topLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
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
          // const SizedBox(width: 10),
          // SizedBox(
          //   width: 100.sw,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       const Gap(90),
          //       Row(
          //         children: [
          //           CustomFormField(
          //             index: 0,
          //             label: 'Name',
          //           ),
          //           CustomFormField(
          //             index: 1,
          //             label: 'E-mail',
          //           ),
          //         ],
          //       ),
          //       Row(
          //         children: [
          //           CustomFormField(
          //             index: 2,
          //             label: 'Subject',
          //           ),
          //           CustomFormField(
          //             index: 3,
          //             label: 'Phone',
          //           ),
          //         ],
          //       ),
          //       Container(
          //         // height: 220,
          //         margin: const EdgeInsets.only(bottom: 10),
          //         decoration: BoxDecoration(
          //           color: !isTab[4]
          //               ? primaryColor.withOpacity(0.3)
          //               : bgSecondColor.withOpacity(0.3),
          //           borderRadius: BorderRadius.circular(20),
          //         ),
          //         child: Padding(
          //           padding: EdgeInsets.only(left: 6.sw, top: 10),
          //           child: TextField(
          //             maxLines: 5,
          //             decoration: InputDecoration(
          //               errorBorder: InputBorder.none,
          //               focusedBorder: InputBorder.none,
          //               hintText: 'Message',
          //               hintStyle: GoogleFonts.josefinSans(
          //                 fontSize: 19,
          //                 color: textColor.withOpacity(0.7),
          //                 fontWeight: FontWeight.w600,
          //               ),
          //               enabledBorder: InputBorder.none,
          //             ),
          //             onTap: () {
          //               setState(() {
          //                 for (int i = 0; i < isTab.length; i++) {
          //                   i == 0 ? isTab[4] = true : isTab[4] = false;
          //                 }
          //               });
          //             },
          //             onTapOutside: (event) {
          //               setState(() {
          //                 isTab[4] = false;
          //               });
          //             },
          //           ),
          //         ),
          //       ),
          //       const Gap(15),
          //       AnimatedContainer(
          //         padding: const EdgeInsets.only(left: 30),
          //         duration: const Duration(
          //           milliseconds: 300,
          //         ),
          //         transform: Matrix4.translationValues(isHovered ? 10 : 0,
          //             isHovered ? 20 : 0, isHovered ? 20 : 0),
          //         child: InkWell(
          //             onTap: () {},
          //             onHover: (value) {
          //               setState(() {
          //                 isHovered = value;
          //               });
          //             },
          //             borderRadius: BorderRadius.circular(30),
          //             child: Container(
          //               height: 50,
          //               width: 200,
          //               decoration: BoxDecoration(
          //                   borderRadius: BorderRadius.circular(30),
          //                   color:
          //                       isHovered ? secondaryColor : primaryColor),
          //               child: Padding(
          //                 padding:
          //                     const EdgeInsets.symmetric(horizontal: 15),
          //                 child: Center(
          //                     child: Text(
          //                   'Submit',
          //                   style: GoogleFonts.josefinSans(
          //                       color: Colors.white, fontSize: 20),
          //                 )),
          //               ),
          //             )),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
