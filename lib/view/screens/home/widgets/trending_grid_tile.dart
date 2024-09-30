// ignore_for_file: prefer_const_constructors

import 'package:bd_mock_api/core/utils/constants/image_strings.dart';
import 'package:bd_mock_api/core/utils/constants/sizes.dart';
import 'package:bd_mock_api/core/utils/constants/text_strings.dart';
import 'package:bd_mock_api/view/screens/widgets/gap.dart';
import 'package:flutter/material.dart';

class TrendingGridTile extends StatelessWidget {
  const TrendingGridTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius:
                BorderRadius.circular(JSize.borderRadSm),
            child: Image.asset(JImages.icecream)),
        JGap(),
        SizedBox(
          height: 90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                JTexts.pName,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              Text(
                JTexts.pCat,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                JTexts.pLocation,
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                '★ ${JTexts.pRating}| ${JTexts.pTime}',
                style:
                    Theme.of(context).textTheme.labelMedium,
              ),
            ],
          ),
        )
      ],
    );
  }
}
