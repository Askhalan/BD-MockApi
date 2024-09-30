  import 'package:bd_mock_api/core/utils/constants/colors.dart';
import 'package:bd_mock_api/core/utils/constants/image_strings.dart';
import 'package:bd_mock_api/core/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

BottomNavigationBar navigationBar(bool isDark) {
    return BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: isDark ? JColor.white : JColor.black,
        showSelectedLabels: true,
        selectedItemColor: JColor.primary,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(JImages.home), label: JTexts.home),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(JImages.cart), label: JTexts.cart),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(JImages.myOrder), label: JTexts.myOrders),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(JImages.accounts), label: JTexts.accounts)
        ]);
  }
