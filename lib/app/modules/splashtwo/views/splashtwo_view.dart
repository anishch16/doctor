import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../contants/colors.dart';
import '../../../contants/icons.dart';
import '../controllers/splashtwo_controller.dart';

class SplashtwoView extends StatelessWidget {
  final SplashtwoController splashtwoController = Get.put(SplashtwoController());

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: AppColors.blue,
      child: Center(
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIcons.logo2),
            ],
          )
      ),
    );
  }
}
