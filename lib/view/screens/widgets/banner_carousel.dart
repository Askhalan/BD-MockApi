// ignore_for_file: prefer_const_constructors

import 'package:bd_mock_api/view/screens/widgets/gap.dart';
import 'package:bd_mock_api/view/screens/widgets/section_title.dart';
import 'package:flutter/material.dart';

class BannerCarousel extends StatelessWidget {
  const BannerCarousel({
    super.key,
    required this.carouselTitle,
    required this.height,
    required this.itemCount,
    required this.card,
  });
  final String carouselTitle;
  final double height;
  final int itemCount;
  final Widget card;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(
          text: carouselTitle,
        ),
        JGap(),
        SizedBox(
          height: height,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return card;
            },
          ),
        ),
      ],
    );
  }
}
