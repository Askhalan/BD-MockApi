// ignore_for_file: prefer_const_constructors

import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:bd_mock_api/core/utils/constants/image_strings.dart';
import 'package:bd_mock_api/view/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppbarTitle extends StatelessWidget {
  const AppbarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          JImages.location,
        ),
        JGap(),
        Text('ABCD, New Delhi'),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: JColor.primary,
            ))
      ],
    );
  }
}
