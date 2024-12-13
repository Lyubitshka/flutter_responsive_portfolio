import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/sections/projects/widgets/project_card_dialog.dart';
import 'package:web_presentation/app/utils/projects_utils.dart';
import 'package:web_presentation/core/animations/entrance_fader.dart';
import 'package:web_presentation/core/color/colors.dart';

class ProjectsTab extends StatefulWidget {
  const ProjectsTab({super.key});

  @override
  State<ProjectsTab> createState() => _ProjectsTabState();
}

class _ProjectsTabState extends State<ProjectsTab> {
  List<bool> isHovered = List.generate(6, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.sw,
      color: bgColor,
      padding: EdgeInsets.only(top: 5.sh, left: 5.sw, right: 5.sw),
      child: Column(
        children: [
          Text(
            'My Projects',
            style: GoogleFonts.josefinSans(
              fontSize: 36,
              fontWeight: FontWeight.w800,
              color: primaryColor,
            ),
          ),
          SizedBox(height: 1.sh),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.sw),
            child: Text(
              'Provide Wide Range of Ideas',
              textAlign: TextAlign.center,
              style: GoogleFonts.josefinSans(
                fontSize: 24,
                fontWeight: FontWeight.w500,
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
              padding: EdgeInsets.all(5.sh),
              crossAxisSpacing: 4.sh,
              mainAxisSpacing: 4.sh,
              children: List.generate(6, (index) {
                return ProjectCard(index);
              }),
            ),
          )
          // SizedBox(
          //   height: 100.sh,
          //   // width: 100.sw,
          //   child: EntranceFader(
          //     delay: const Duration(seconds: 1),
          //     duration: const Duration(seconds: 2),
          //     child: GridView.builder(
          //       itemCount: 6,
          //       padding: EdgeInsets.only(top: 4.sh, left: 15.sw, right: 15.sw),
          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //         crossAxisCount: 3,
          //         mainAxisExtent: 20.sh,
          //         crossAxisSpacing: 15,
          //         mainAxisSpacing: 45,
          //       ),
          //       itemBuilder: ((context, index) {
          //         return ProjectCard(index);
          //       }),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }

  ProjectCard(int index) {
    return Container(
      height: 100.sh,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
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
      child: Container(
        // margin: EdgeInsets.all(18),
        // decoration: const BoxDecoration(
        //   shape: BoxShape.circle,
        //   color: Colors.amber,
        // ),
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
                  iconSize: 68,
                  icon: Icon(projectUtils[index].icon),
                ),
                const Gap(5),
                Text(
                  projectUtils[index].name,
                  style: GoogleFonts.josefinSans(
                      fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            )),
      ),
    );
  }

  Future<dynamic> showProjectDetails(int index) {
    return showDialog(
      context: context,
      builder: (context) => Dialog(
        child: ProjectCardDialog(
          idx: projectUtils[index],
          projectName: projectUtils[index].name,
          title: projectUtils[index].title,
          description: projectUtils[index].description,
          link: projectUtils[index].gitLink,
          imgAssets: projectUtils[index].imgAsset,
          techStack: projectUtils[index].techStack,
          icon: projectUtils[index].icon,
        ),
      ),
    );
  }
}
