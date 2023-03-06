import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../core/values/colors.dart';
import '../../../../routes/app_pages.dart';
import '../../controllers/main_controller.dart';
import '../components/drawe_item.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MainController());
    return Scaffold(
        backgroundColor: cardColor,
        body: Container(
          padding: EdgeInsets.all(12),
          height: Get.height,
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Row(
                children: [
                  SizedBox(width: 4),
                  ClipOval(
                    child: SizedBox(
                        height: 50,
                        width: 50,
                        child: FadeInImage(
                          image: NetworkImage(''),
                          placeholder: const AssetImage("assets/images/user_2.png"),
                          imageErrorBuilder: (context, error, stackTrace) {
                            return Image.asset('assets/images/user_2.png', fit: BoxFit.cover);
                          },
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Stranger',
                        style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Hello! How its going?",
                        style: TextStyle(fontSize: 10, color: Colors.white, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  // IconButton(
                  //   icon: Icon(
                  //     Icons.close,
                  //     color: Colors.white,
                  //     size: 38,
                  //   ),
                  //   onPressed: () {
                  //    // Get.find<MainController>().drawerClose();
                  //   },
                  // )
                ],
              ),
              Spacer(),
              DrawerItem("Saved", () => Get.toNamed(Routes.INIT)),
              DrawerItem("My post", () => Get.toNamed(Routes.INIT)),
              DrawerItem("Help center", () => Get.toNamed(Routes.INIT)),
              DrawerItem("Privacy Policy", () => Get.toNamed(Routes.INIT)),
              DrawerItem("About App", () => Get.toNamed(Routes.INIT)),
              DrawerItem("Rate Our App", () => Get.toNamed(Routes.INIT)),
              Spacer(
                flex: 2,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                   Icon(Icons.logout_sharp,color: Colors.white,),
                    const SizedBox(width: 8),
                    const Text(
                      " Log out",
                      style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 28)
            ],
          ),
        ));
  }
}
