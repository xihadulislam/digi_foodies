import 'dart:developer';

import 'package:digi_foodies/app/modules/discover/views/discover_view.dart';
import 'package:digi_foodies/app/modules/favorite/views/favorite_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:bottom_bar_with_sheet/bottom_bar_with_sheet.dart';

import '../../../../../core/values/colors.dart';
import '../../../../routes/app_pages.dart';
import '../../../feed/views/feed_view.dart';
import '../../../home/views/home_view.dart';
import '../../controllers/main_controller.dart';
import '../components/bottom_actions.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);
  final List<Widget> screen = [
    HomeView(),
    DiscoverView(),
    FeedView(),
    FavoriteView(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MainController());
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: Obx(() => PageStorage(
            bucket: bucket,
            child: screen[controller.count.value],
          )),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],

      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {  },),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
