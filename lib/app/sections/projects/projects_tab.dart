import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/sections/projects/widgets/project_card_dialog.dart';
import 'package:web_presentation/app/utils/projects_utils.dart';
import 'package:web_presentation/core/animations/entrance_fader.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/constants/fonts.dart';

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
      padding: EdgeInsets.only(top: 5.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.sw),
            child: Text(
              'My Projects',
              style: titleTab,
            ),
          ),
          Gap(1.sh),
          Padding(
            padding: EdgeInsets.only(left: 15.sw),
            child: Text(
              'select card for more details',
              textAlign: TextAlign.center,
              style: subtitleTab,
            ),
          ),
          EntranceFader(
            delay: const Duration(seconds: 1),
            duration: const Duration(seconds: 2),
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              primary: false,
              padding: EdgeInsets.all(5.sh),
              crossAxisSpacing: 4.sh,
              mainAxisSpacing: 4.sh,
              children: List.generate(6, (index) {
                return projectCard(index);
              }),
            ),
          )
        ],
      ),
    );
  }

  Widget projectCard(int index) {
    return GestureDetector(
      onTap: () {
        showProjectDetails(index);
      },
      child: Container(
        height: 50.sh,
        padding: EdgeInsets.all(1.sh),
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
          ],
        ),
        child: InkWell(
          onHover: (value) {
            setState(() {
              isHovered[index] = value;
            });
          },
          onTap: () {
            showProjectDetails(index);
          },
          child: Stack(
            alignment: AlignmentDirectional.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                onEnter: (_) {
                  setState(() {
                    isHovered[index] = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isHovered[index] = false;
                  });
                },
                child: AnimatedScale(
                  scale: isHovered[index] ? 1.2 : 1.0,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: isHovered[index] ? 1.0 : 0.5,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage(projectUtils[index].projectGridImg),
                      backgroundColor: bgColor,
                    ),
                  ),
                ),
              ),
              isHovered[index]
                  ? Text('')
                  : Text(
                      projectUtils[index].name,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.josefinSans(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: isHovered[index] ? primaryColor : secondaryColor,
                      ),
                    ),
            ],
          ),
        ),
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
