import 'package:get/get.dart';
import '../../splashtwo/views/splashtwo_view.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    delayAndGo();
  }

  void delayAndGo() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.off(() => SplashtwoView(), transition: Transition.fade);
  }
}
