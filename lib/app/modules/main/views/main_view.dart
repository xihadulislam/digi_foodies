import 'package:digi_foodies/app/modules/main/views/screens/drawer_screen.dart';
import 'package:digi_foodies/app/modules/main/views/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import 'package:get/get.dart';

import '../../../../core/values/colors.dart';
import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: controller.z,
      borderRadius: 24.0,
      angle: -0.3,
      drawerShadowsBackgroundColor: scaffoldBackgroundColor.withOpacity(0.8),
      slideWidth: MediaQuery.of(context).size.width * 0.65,
      style: DrawerStyle.defaultStyle,
      showShadow: true,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.fastOutSlowIn,
      menuScreenTapClose: true,
      duration: const Duration(milliseconds: 500),
      menuBackgroundColor: cardColor,
      mainScreen: MainScreen(),
      menuScreen: DrawerScreen(),
    );
  }
}
