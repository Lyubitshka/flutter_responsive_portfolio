import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:web_presentation/app/utils/utils.dart';
import 'package:web_presentation/core/providers/scroll_provider.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return ScrollablePositionedList.builder(
        itemScrollController: scrollProvider.itemScrollController,
        scrollOffsetController: scrollProvider.scrollOffsetController,
        itemPositionsListener: scrollProvider.itemPositionsListener,
        // scrollOffsetListener: scrollProvider.scrollOffsetListener,
        itemCount: BodyUtils.views(scrollProvider).length,
        itemBuilder: (context, index) {
          return BodyUtils.views(scrollProvider)[index];
        });
  }
}
