// ignore_for_file: prefer_const_constructors

import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:bd_mock_api/core/utils/constants/image_strings.dart';
import 'package:bd_mock_api/core/utils/constants/sizes.dart';
import 'package:bd_mock_api/view/notification/scn_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HeaderActionButtons extends StatelessWidget {
  const HeaderActionButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: JSize.defaultPadding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Search for products/ stores',
              suffixIcon: Padding(
                padding: const EdgeInsets.all(11),
                child: SvgPicture.asset(
                  JImages.search,
                ),
              ),
            ),
          )),
          IconButton(
              onPressed: () {
                Get.to(() => NotificationsScreen());
              },
              icon: Icon(
                Icons.notifications_outlined,
                size: 40,
                color: JColor.error,
              )),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              JImages.tag,
            ),
          )
        ],
      ),
    );
  }
}
