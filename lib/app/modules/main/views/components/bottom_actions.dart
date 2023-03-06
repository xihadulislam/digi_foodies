import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../../../../../core/values/colors.dart';
import '../../controllers/main_controller.dart';

class BottomActions extends StatelessWidget {
  BottomActions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mainController = Get.put(MainController());

    return Container(
      margin: EdgeInsets.only(top: 6),
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 6,
        childAspectRatio: 1.4,
        children: List.generate(mainController.list.length, (index) {
          return InkWell(
            onTap: () {
              mainController.bottomBarController.closeSheet();
              mainController.navigateToAction(index);
            },
            child: Container(
                child: Column(
              children: [
                Spacer(),
                Icon(
                  mainController.list[index].icon,
                  color: Colors.white,
                ),
                const SizedBox(height: 4),
                Text(
                  mainController.list[index].message,
                  style: TextStyle(fontSize: 11, color: textSColor.withOpacity(0.8), fontWeight: FontWeight.normal),
                ),
                Spacer()
              ],
            )),
          );
        }),
      ),
    );
  }
}
