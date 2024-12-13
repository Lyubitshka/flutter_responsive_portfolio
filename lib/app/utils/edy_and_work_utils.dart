import 'package:flutter/material.dart';

class EduWorkUtils {
  final String date;
  final String title;
  final String subtitle;
  final String description;
  final IconData icon;

  EduWorkUtils(
      {required this.date,
      required this.description,
      required this.subtitle,
      required this.title,
      required this.icon});
}

List<EduWorkUtils> eduworkUtils = [
  EduWorkUtils(
    date: '2012\n2017',
    description:
        "During my studies in civil engineering, I developed strong analytical and problem-solving skills, attention to detail, and the ability to work efficiently under pressure. These experiences helped me hone my organizational abilities, which are valuable for tackling complex problems and managing projects effectively in software development. Additionally, working as a chef in one of the best restaurants in Poznań taught me the importance of teamwork, time management, and staying calm under pressure, skills that I carry with me into every professional challenge.",
    subtitle: 'Poznań University of Technology',
    title: 'Master of Civil Engineer',
    icon: Icons.school,
  ),
  EduWorkUtils(
    date: '2018\n2022',
    description:
        'As an Engineer on a building site in a worldwide construction company, I get along with corporate compliance and procedures, dealing and talking with different groups of business partners and preparing various kinds of documentation. I am always positive, and accountable and I have a problem-solving mindset. I am an open-minded person and have a proactive approach to life. I am always open to learning, adaptation, and critical thinking, and also strongly focused on business goals.',
    subtitle: "Eurovia Polska S.A.",
    title: 'Estimator Engineer',
    icon: Icons.work_sharp,
  ),
];
