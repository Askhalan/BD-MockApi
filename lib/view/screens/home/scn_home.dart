import 'package:bd_mock_api/core/utils/helpers/helper_functions.dart';
import 'package:bd_mock_api/view/controller/screen_controller.dart';
import 'package:bd_mock_api/view/screens/home/widgets/appbar_title.dart';
import 'package:bd_mock_api/view/screens/home/widgets/craze_deals.dart';
import 'package:bd_mock_api/view/screens/home/widgets/header_action_buttons.dart';
import 'package:bd_mock_api/view/screens/home/widgets/nearby_stores.dart';
import 'package:bd_mock_api/view/screens/home/widgets/reffer.dart';
import 'package:bd_mock_api/view/screens/home/widgets/section_icons.dart';
import 'package:bd_mock_api/view/screens/home/widgets/top_picks.dart';
import 'package:bd_mock_api/view/screens/home/widgets/trending.dart';
import 'package:bd_mock_api/view/screens/widgets/bottom_navigation.dart';
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
        children: [
          //----------------------- ACTION BUTTONS -----------------------

          const HeaderActionButtons(),

          //----------------------- SECTION BUTTONS ----------------------

          const SectionIcons(),

          //-------------------------- TOP PICKS -------------------------

          const TopPicks(),

          //--------------------------- TRENDING -------------------------

          const Trending(),

          //-------------------------- CRAZE DEALS -----------------------

          const CrazeDeals(),

          //---------------------------- REFFER --------------------------

          const Reffer(),

          //------------------------- NEARBY STORES ----------------------

          const NearbyStores(),
        ],
      ),
    );
  }
}
