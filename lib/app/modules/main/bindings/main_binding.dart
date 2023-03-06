import 'package:digi_foodies/app/modules/discover/controllers/discover_controller.dart';
import 'package:digi_foodies/app/modules/favorite/controllers/favorite_controller.dart';
import 'package:digi_foodies/app/modules/feed/controllers/feed_controller.dart';
import 'package:get/get.dart';

import '../../home/controllers/home_controller.dart';
import '../controllers/main_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(
      () => MainController(),
    );

    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<DiscoverController>(
      () => DiscoverController(),
    );
    Get.lazyPut<FeedController>(
      () => FeedController(),
    );
    Get.lazyPut<FavoriteController>(
      () => FavoriteController(),
    );
  }
}
