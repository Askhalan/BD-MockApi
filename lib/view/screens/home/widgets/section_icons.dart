// ignore_for_file: prefer_const_constructors

import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:bd_mock_api/core/utils/constants/sizes.dart';
import 'package:bd_mock_api/core/utils/constants/text_strings.dart';
import 'package:bd_mock_api/view/controller/screen_controller.dart';
import 'package:bd_mock_api/view/screens/home/widgets/section_item_tile.dart';
import 'package:bd_mock_api/view/screens/widgets/gap.dart';
import 'package:bd_mock_api/view/screens/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class SectionIcons extends StatelessWidget {
  const SectionIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.find();
    return Padding(
      padding: JSize.defaultPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(
            text: JTexts.headerTitle,
          ),
          JGap(),
          Obx(
            () => AnimatedSize(
              duration: Duration(milliseconds: 350),
              curve: Curves.decelerate,
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: homeController.isSectionIconsExtended.value ? 16 : 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  childAspectRatio: 3 / 4,
                ),
                itemBuilder: (context, index) {
                  return SectionItemTile(index: index);
                },
              ),
            ),
          ),

          // "See More" Button
          Obx(
            () => Center(
              child: TextButton(
                onPressed: () {
                  homeController.isSectionIconsExtended.value =
                      !homeController.isSectionIconsExtended.value;
                },
                child: Text(
                  homeController.isSectionIconsExtended.value ? 'Less' : 'More',
                  style: TextStyle(
                      color: JColor.primary, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
