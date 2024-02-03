import 'package:get/get.dart';
import '../../skipping_page/views/skipping_view.dart';

class SplashtwoController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    delayAndGo();
  }

  void delayAndGo() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.off(() => const SkippingView(), transition: Transition.fade);
  }
}