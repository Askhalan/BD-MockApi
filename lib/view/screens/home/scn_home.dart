// ignore_for_file: prefer_const_constructors

import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:bd_mock_api/core/utils/constants/image_strings.dart';
import 'package:bd_mock_api/core/utils/constants/sizes.dart';
import 'package:bd_mock_api/core/utils/constants/text_strings.dart';
import 'package:bd_mock_api/core/utils/helpers/helper_functions.dart';
import 'package:bd_mock_api/view/controller/screen_controller.dart';
import 'package:bd_mock_api/view/screens/home/widgets/appbar_title.dart';
import 'package:bd_mock_api/view/screens/home/widgets/header_action_buttons.dart';
import 'package:bd_mock_api/view/screens/home/widgets/section_icons.dart';
import 'package:bd_mock_api/view/screens/widgets/gap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class ScnHome extends StatelessWidget {
  const ScnHome({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: AppbarTitle(),
      ),
      body: ListView(
        children: [
          //----------------------- ACTION BUTTONS -----------------------

          HeaderActionButtons(),

          //----------------------- SECTION BUTTONS ----------------------

          SectionIcons(),

          //-------------------------- TOP PICKS -------------------------
          Padding(
            padding: EdgeInsets.only(left: JSize.defaultPaddingValue),
            child: SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                     
                      Container(
                        padding: EdgeInsets.all(30),
                        margin:
                            EdgeInsets.only(right: JSize.defaultPaddingValue),
                        width: JHelperFunctions.screenWidth(context) * 0.9,
                        decoration: BoxDecoration(
                            color: JColor.primary,
                            borderRadius:
                                BorderRadius.circular(JSize.borderRadMd)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 150,
                              child: Text(
                                JTexts.topPicBannerTitle1,
                                style: TextStyle(
                                    height: 1.2,
                                    color: JColor.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 22),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            JGap(),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                  width: 150,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: JColor.secondary,
                                      borderRadius: BorderRadius.circular(
                                          JSize.borderRadSm)),
                                  child: Center(
                                      child: Text(
                                    JTexts.checkNow,
                                    style: TextStyle(
                                        color: JColor.white,
                                        fontWeight: FontWeight.bold),
                                  ))),
                            )
                          ],
                        ),
                      ),
                       Positioned(
                        bottom: 0,right: 40,
                        child: Image.asset(JImages.topPicBanner)),
                    ],
                  );
                },
              ),
            ),
          )
          //--------------------------- TRENDING -------------------------
          //-------------------------- CRAZE DEALS -----------------------
          //---------------------------- REFFER --------------------------
          //------------------------- NEARBY STORES ----------------------
        ],
      ),
    );
  }
}
