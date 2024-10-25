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
        'During the studies I worked as a chef in one of the best restaurants in Poznań. During that time I’ve learned good, fair and fruitful teamwork, working under time pressure and how to be well organised in work place and have very good time management. ',
    subtitle: 'Poznań University of Technology',
    title: 'Master of Civil Engineer Degree',
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
