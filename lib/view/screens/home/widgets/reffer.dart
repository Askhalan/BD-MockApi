// ignore_for_file: prefer_const_constructors

import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:bd_mock_api/core/utils/constants/image_strings.dart';
import 'package:bd_mock_api/core/utils/constants/sizes.dart';
import 'package:bd_mock_api/core/utils/constants/text_strings.dart';
import 'package:bd_mock_api/view/screens/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Reffer extends StatelessWidget {
  const Reffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: JSize.defaultPadding,
      child: Stack(
        children: [
          Container(
            padding: JSize.defaultPadding,
            height: 130,
            decoration: BoxDecoration(
                color: JColor.primary,
                borderRadius: BorderRadius.circular(JSize.borderRadLg)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    JTexts.refferAndEarn,
                    style: TextStyle(
                        color: JColor.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 22),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      JTexts.refferAndEarnBody,
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: JColor.white,
                          ),
                    ),
                    JGap(),
                    Icon(
                      Icons.arrow_circle_right,
                      color: JColor.white,
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(right: 10,bottom: 8, child: SvgPicture.asset(JImages.giftsBanner))
        ],
      ),
    );
  }
}
