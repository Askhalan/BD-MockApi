// ignore_for_file: prefer_const_constructors

import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:bd_mock_api/core/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BadgeTopStore extends StatelessWidget {
  const BadgeTopStore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              JSize.borderRadSm),
          color: JColor.grey),
          child: Text('Top Store', style: Theme.of(context).textTheme.labelMedium,),
    );
  }
}
