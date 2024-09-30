// ignore_for_file: prefer_const_constructors

import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:bd_mock_api/core/utils/constants/image_strings.dart';
import 'package:bd_mock_api/core/utils/constants/sizes.dart';
import 'package:bd_mock_api/core/utils/constants/text_strings.dart';
import 'package:bd_mock_api/core/utils/helpers/helper_functions.dart';
import 'package:bd_mock_api/view/screens/widgets/banner_carousel.dart';
import 'package:bd_mock_api/view/screens/widgets/gap.dart';
import 'package:flutter/material.dart';

class CrazeDeals extends StatelessWidget {
  const CrazeDeals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = JHelperFunctions.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.only(
          left: JSize.defaultPaddingValue, bottom: JSize.defaultPaddingValue),
      child: BannerCarousel(
        carouselTitle: JTexts.crazeDeals,
        height: 170,
        itemCount: 3,
        card: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(25),
              margin: EdgeInsets.only(right: JSize.defaultPaddingValue),
              width: JHelperFunctions.screenWidth(context) * 0.9,
              decoration: BoxDecoration(
                  border: isDark
                      ? Border.all(width: 1, color: JColor.darkerGrey)
                      : Border.all(width: 0),
                  color: JColor.black,
                  borderRadius: BorderRadius.circular(JSize.borderRadMd)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 250,
                    child: Text(
                      JTexts.crazeDealsBannerTitle,
                      style: TextStyle(
                          height: 1.2,
                          color: JColor.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 22),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  JGap(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        JTexts.explore,
                        style: TextStyle(
                            color: JColor.secondary,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        color: JColor.secondary,
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 0, right: 40, child: Image.asset(JImages.vegetables)),
          ],
        ),
      ),
    );
  }
}
