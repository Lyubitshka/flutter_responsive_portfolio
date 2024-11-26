import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:web_presentation/core/color/colors.dart';

class CertificatesTimeline extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  Widget? startChild;
  Widget? endChild;

  CertificatesTimeline({
    super.key,
    this.startChild,
    this.endChild,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
  });
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return TimelineTile(
      // axis: screenWidth < 650 ? TimelineAxis.horizontal : TimelineAxis.vertical,
      alignment: TimelineAlign.center,
      isFirst: isFirst,
      isLast: isLast,
      beforeLineStyle: LineStyle(color: !isPast ? primaryColor : textColor),
      indicatorStyle: IndicatorStyle(
        padding: const EdgeInsets.all(10),
        width: 45,
        color: !isPast ? primaryColor : secondaryColor,
        iconStyle: IconStyle(
          iconData: isPast ? Icons.school_sharp : Icons.done,
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      startChild: startChild,
      endChild: endChild,
    );
  }
}
