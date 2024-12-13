import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/utils/projects_utils.dart';
import 'package:web_presentation/core/animations/entrance_fader.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'widgets/project_card_dialog_mobile.dart';

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({super.key});

  @override
  State<ProjectsMobile> createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
  List<bool> isHovered = List.generate(6, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.sw,
      color: bgColor,
      padding: EdgeInsets.only(top: 3.sh, left: 5.sw, right: 5.sw),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.sw),
            child: Text(
              'My Projects',
              style: GoogleFonts.josefinSans(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: primaryColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.sw),
            child: Text(
              'select card for more details',
              style: GoogleFonts.josefinSans(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: secondaryColor,
              ),
            ),
          ),
          EntranceFader(
            delay: const Duration(seconds: 1),
            duration: const Duration(seconds: 2),
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              primary: false,
              padding: EdgeInsets.all(2.sh),
              crossAxisSpacing: 2.sh,
              mainAxisSpacing: 2.sh,
              children: List.generate(6, (index) {
                return ProjectCard(index);
              }),
            ),
          )
        ],
      ),
    );
  }

  ProjectCard(int index) {
    return Container(
      height: 100.sh,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: bgColor,
          boxShadow: [
            const BoxShadow(
              color: Colors.white,
              spreadRadius: 1,
              blurRadius: 15,
              offset: Offset(-5, -5),
            ),
            BoxShadow(
              color: Colors.grey.shade500,
              spreadRadius: 1,
              blurRadius: 10,
              offset: const Offset(4, 4),
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
          // hoverDuration: Duration(seconds: 3),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  showProjectDetails(index);
                },
                iconSize: 12.sw,
                icon: Icon(projectUtils[index].icon),
              ),
              Gap(5.sw),
              Text(
                projectUtils[index].name,
                style: GoogleFonts.josefinSans(
                    fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }

  Future<dynamic> showProjectDetails(int index) {
    return showDialog(
      context: context,
      builder: (context) => Dialog(
        child: SingleChildScrollView(
          child: ProjectCardDialogMobile(
            idx: projectUtils[index],
            projectName: projectUtils[index].name,
            description: projectUtils[index].description,
            link: projectUtils[index].gitLink,
            imgAssets: projectUtils[index].imgAsset,
          ),
        ),
      ),
    );
  }
}
