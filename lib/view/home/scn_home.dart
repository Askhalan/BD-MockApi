import 'package:bd_mock_api/core/utils/helpers/helper_functions.dart';
import 'package:bd_mock_api/controller/screen_controller.dart';
import 'package:bd_mock_api/view/home/widgets/appbar_title.dart';
import 'package:bd_mock_api/view/home/widgets/craze_deals.dart';
import 'package:bd_mock_api/view/home/widgets/header_action_buttons.dart';
import 'package:bd_mock_api/view/home/widgets/nearby_stores.dart';
import 'package:bd_mock_api/view/home/widgets/reffer.dart';
import 'package:bd_mock_api/view/home/widgets/section_icons.dart';
import 'package:bd_mock_api/view/home/widgets/top_picks.dart';
import 'package:bd_mock_api/view/home/widgets/trending.dart';
import 'package:bd_mock_api/view/widgets/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class ScnHome extends StatelessWidget {
  const ScnHome({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = JHelperFunctions.isDarkMode(context);
    Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: const AppbarTitle(),
      ),
      bottomNavigationBar: navigationBar(isDark),
      body: ListView(
        children: const [
          //----------------------- ACTION BUTTONS -----------------------

          HeaderActionButtons(),

          //----------------------- SECTION BUTTONS ----------------------

          SectionIcons(),

          //-------------------------- TOP PICKS -------------------------

          TopPicks(),

          //--------------------------- TRENDING -------------------------

          Trending(),

          //-------------------------- CRAZE DEALS -----------------------

          CrazeDeals(),

          //---------------------------- REFFER --------------------------

          Reffer(),

          //------------------------- NEARBY STORES ----------------------

          NearbyStores(),
        ],
      ),
    );
  }
}
