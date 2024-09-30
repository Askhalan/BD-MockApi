// ignore_for_file: prefer_const_constructors

import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:bd_mock_api/core/utils/helpers/helper_functions.dart';
import 'package:bd_mock_api/view/screens/home/widgets/section_items_list.dart';
import 'package:bd_mock_api/view/screens/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SectionItemTile extends StatelessWidget {
  const SectionItemTile({
    super.key,
    required this.index,
  });

  final int index;
  @override
  Widget build(BuildContext context) {
    bool isDark = JHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        SizedBox(
          height: 70,
          width: 70,
          child: Container(
            padding: EdgeInsets.all(13),
            decoration: BoxDecoration(
                color: isDark ? JColor.darkGrey : JColor.white,
                borderRadius: BorderRadius.circular(7),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ]),
            child: SizedBox(
              height: 40,
              width: 40,
              child: SvgPicture.asset(
                sectionIcons[index % 8],
              ),
            ),
          ),
        ),
        JGap(),
        SizedBox(
          width: 70,
          child: Text(
            sectionTexts[index % 8],
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}
