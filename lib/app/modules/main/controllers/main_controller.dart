import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../views/components/Action.dart';

class MainController extends GetxController {
  //TODO: Implement MainController

  final ZoomDrawerController z = ZoomDrawerController();

  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  changePage(i) => count.value = i;

  List<BottomActionModel> list = [
    BottomActionModel(icon: Icons.add_circle_outline_sharp, message: "Add Deposit"),
    BottomActionModel(icon: Icons.monetization_on_sharp, message: "Add Cost/Bazar"),
    BottomActionModel(icon: Icons.fastfood_rounded, message: "Add Meal"),
    BottomActionModel(icon: Icons.no_meals_ouline, message: "Add Single Meal"),
    BottomActionModel(icon: Icons.person_add_alt_rounded, message: "Add New Member"),
  ];

  var bottomBarController = BottomBarWithSheetController(initialIndex: 0);

  void navigateToAction(int index) {

  }
}
