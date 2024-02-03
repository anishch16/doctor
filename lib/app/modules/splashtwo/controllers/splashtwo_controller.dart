import 'package:get/get.dart';
import '../../login/views/login_view.dart';

class SplashtwoController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    delayAndGo();
  }

  void delayAndGo() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.off(() => const LoginView(), transition: Transition.fade);
  }
}