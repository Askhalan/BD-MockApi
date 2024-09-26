// ignore_for_file: prefer_const_constructors

import 'package:bd_mock_api/view/controller/screen_controller.dart';
import 'package:bd_mock_api/view/screens/home/widgets/appbar_title.dart';
import 'package:bd_mock_api/view/screens/home/widgets/header_action_buttons.dart';
import 'package:bd_mock_api/view/screens/home/widgets/section_icons.dart';
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
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                
              );
            },
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
