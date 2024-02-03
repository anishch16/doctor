import 'package:get/get.dart';

import '../controllers/skipping_controller.dart';


class SkippingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SkippingController>(
      () => SkippingController(),
    );
  }
}
