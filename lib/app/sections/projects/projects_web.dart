import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/sections/projects/widgets/project_card_dialog.dart';
import 'package:web_presentation/app/utils/projects_utils.dart';
import 'package:web_presentation/core/animations/entrance_fader.dart';
import 'package:web_presentation/core/color/colors.dart';

class ProjectsWeb extends StatefulWidget {
  const ProjectsWeb({super.key});

  @override
  State<ProjectsWeb> createState() => _ProjectsWebState();
}

class _ProjectsWebState extends State<ProjectsWeb> {
  List<bool> isHovered = List.generate(6, (index) => false);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      // constraints: const BoxConstraints(maxHeight: double.infinity),
      // height: double.infinity,
      width: 100.sw,
      color: bgColor,
      padding: EdgeInsets.only(top: 6.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.sw),
            child: Text(
              'My Projects',
              style: GoogleFonts.josefinSans(
                fontSize: 48,
                fontWeight: FontWeight.w900,
                color: primaryColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.sw),
            child: Text(
              'select card for more details',
              textAlign: TextAlign.center,
              style: GoogleFonts.josefinSans(
                fontSize: 32,
                fontWeight: FontWeight.w400,
                color: secondaryColor,
              ),
            ),
          ),
          Container(
            constraints: const BoxConstraints(maxHeight: double.infinity),
            height: 50.sh,
            child: EntranceFader(
              delay: const Duration(seconds: 1),
              duration: const Duration(seconds: 2),
              child: GridView.builder(
                itemCount: 6,
                padding: EdgeInsets.only(top: 4.sh, left: 15.sw, right: 15.sw),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: screenSize.width < 1200 ? 2 : 3,
                  mainAxisExtent: 20.sh,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 30,
                ),
                itemBuilder: ((context, index) {
                  return projectCard(index);
                }),
              ),
            ),
          )
        ],
      ),
    );
  }

  projectCard(int index) {
    return GestureDetector(
      onTap: () {
        showProjectDetails(index);
      },
      child: Container(
        height: 50.sh,
        padding: EdgeInsets.all(2.sh),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: bgColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                spreadRadius: 1,
                blurRadius: 15,
                offset: const Offset(4, 4),
              ),
              const BoxShadow(
                color: Colors.white,
                spreadRadius: 3,
                blurRadius: 15,
                offset: Offset(-6, -6),
              ),
            ]),
        child: InkWell(
          onHover: (value) {
            setState(
              () {
                isHovered[index] = value;
              },
            );
          },
          onTap: () {
            showProjectDetails(index);
          },
          child: Image.asset(
            projectUtils[index].projectGridImg,
          ),

          // Text(
          //   projectUtils[index].name,
          //   style: GoogleFonts.josefinSans(
          //       fontSize: isHovered[index] ? 28 : 20,
          //       fontWeight: FontWeight.bold),
          //   textAlign: TextAlign.center,
          // ),
        ),

        // Container(
        //     decoration: BoxDecoration(
        //       shape: BoxShape.circle,
        //       color: primaryColor.withOpacity(0.8),
        //     ),
        //     child: InkWell(
        //       onHover: (value) {
        //         setState(
        //           () {
        //             isHovered[index] = value;
        //           },
        //         );
        //       },
        //       onTap: () {
        //         showProjectDetails(index);
        //       },
        //       child: Text(
        //         projectUtils[index].name,
        //         style: GoogleFonts.josefinSans(
        //             fontSize: isHovered[index] ? 28 : 20,
        //             fontWeight: FontWeight.bold),
        //         textAlign: TextAlign.center,
        //       ),
        //     )),
      ),
    );
  }

  Future<dynamic> showProjectDetails(int index) {
    return showDialog(
        context: context,
        builder: (context) => Dialog(
            backgroundColor: bgColor,
            surfaceTintColor: bgColor,
            child: ProjectCardDialog(
              idx: projectUtils[index],
              projectName: projectUtils[index].name,
              description: projectUtils[index].description,
              link: projectUtils[index].gitLink,
              imgAssets: projectUtils[index].imgAsset,
            )));
  }
}
