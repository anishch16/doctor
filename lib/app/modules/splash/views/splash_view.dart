import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../constants/colors.dart';

import '../../../constants/icons.dart';
import '../controllers/splash_controller.dart';

class SplashView extends StatelessWidget {
  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.blue,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcons.logo),
            SvgPicture.asset(AppIcons.logoText),
          ],
        ),
      ),
    );
  }
}
