// ignore_for_file: prefer_const_constructors

import 'package:bd_mock_api/core/utils/constants/sizes.dart';
import 'package:bd_mock_api/core/utils/constants/text_strings.dart';
import 'package:bd_mock_api/view/home/widgets/top_pick_carousel_card.dart';
import 'package:bd_mock_api/view/widgets/banner_carousel.dart';
import 'package:flutter/material.dart';

class TopPicks extends StatelessWidget {
  const TopPicks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: JSize.defaultPaddingValue,
          bottom: JSize.defaultPaddingValue * 2),
      child: BannerCarousel(
        carouselTitle: JTexts.topPicsTitle,
        height: 220,
        itemCount: 3,
        card: TopPickCarouselCard(),
      ),
    );
  }
}
