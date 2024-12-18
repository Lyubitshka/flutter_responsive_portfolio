import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_presentation/app/utils/projects_utils.dart';
import 'package:web_presentation/core/animations/entrance_fader.dart';
import 'package:web_presentation/core/color/colors.dart';
import 'package:web_presentation/core/constants/fonts.dart';
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
              style: titleMobile,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.sw),
            child: Text(
              'select card for more details',
              style: subtitleMobile,
            ),
          ),
          EntranceFader(
            delay: const Duration(seconds: 1),
            duration: const Duration(seconds: 2),
            child: GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              primary: false,
              padding: EdgeInsets.all(3.sh),
              crossAxisSpacing: 3.sh,
              mainAxisSpacing: 3.sh,
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
        height: 70.sh,
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
              // crossAxisAlignment: CrossAxisAlignment.center,
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
                        style: GoogleFonts.josefinSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: secondaryColor,
                        ),
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
        child: SingleChildScrollView(
          child: ProjectCardDialogMobile(
            idx: projectUtils[index],
            projectName: projectUtils[index].name,
            description: projectUtils[index].description,
            link: projectUtils[index].gitLink,
            imgAssets: projectUtils[index].imgAsset,
            title: projectUtils[index].title,
            techStack: projectUtils[index].techStack,
            icon: projectUtils[index].icon,
          ),
        ),
      ),
    );
  }
}
