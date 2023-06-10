
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unicons/unicons.dart';

import '../pages/home_page.dart';
import 'bottom_nav_item.dart';

Widget buildBottomNavBar(int currIndex, Size size, ThemeData themeData) {
  return BottomNavigationBar(
    iconSize: size.width * 0.07,
    elevation: 0,
    selectedLabelStyle: const TextStyle(fontSize: 0),
    unselectedLabelStyle: const TextStyle(fontSize: 0),
    currentIndex: currIndex,
    backgroundColor: const Color(0x00ffffff),
    type: BottomNavigationBarType.fixed,
    selectedItemColor: themeData.brightness == Brightness.dark
        ? Colors.indigoAccent
        : Colors.black,
    unselectedItemColor: const Color(0xff3b22a1),
    onTap: (value) {
      if (value != currIndex) {
        if (value == 1) {
          Get.off(const HomePageNew());
        }
      }
    },
    items: [
      buildBottomNavItem(
        UniconsLine.home,
        themeData,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.location_point,
        themeData,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.user,
        themeData,
        size,
      ),
      buildBottomNavItem(
        UniconsLine.setting,
        themeData,
        size,
      ),
    ],
  );
}
