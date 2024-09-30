// ignore_for_file: prefer_const_constructors

import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:bd_mock_api/core/utils/constants/sizes.dart';
import 'package:bd_mock_api/core/utils/constants/text_strings.dart';
import 'package:bd_mock_api/view/screens/home/widgets/trending_grid_tile.dart';
import 'package:bd_mock_api/view/screens/widgets/gap.dart';
import 'package:bd_mock_api/view/screens/widgets/section_title.dart';
import 'package:flutter/material.dart';

class Trending extends StatelessWidget {
  const Trending({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: JSize.defaultPaddingValue, bottom:JSize.defaultPaddingValue ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SectionTitle(
                text: JTexts.trending,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    JTexts.seeAll,
                    style: TextStyle(color: JColor.primary),
                  ))
            ],
          ),
          JGap(),
          SizedBox(
            height: 220,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 2,
                childAspectRatio: 2 / 4.7,
                crossAxisCount: 2,
              ),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return TrendingGridTile();
              },
            ),
          ),
        ],
      ),
    );
  }
}
