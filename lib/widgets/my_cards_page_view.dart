import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import 'my_card.dart';

class MyCardsPageView extends StatelessWidget {
  final PageController pageController;

  const MyCardsPageView({
    super.key,
    required this.pageController,
  });

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      scrollDirection: Axis.horizontal,
      controller: pageController,
      children: List.generate(3, (index) => const MyCard()),
    );
  }
}
