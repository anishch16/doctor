import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

import '../constants/colors.dart';
import '../constants/styles.dart';

class SlidingButton extends StatelessWidget {
  final VoidCallback onComplete;

  const SlidingButton({Key? key, required this.onComplete});

  @override
  Widget build(BuildContext context) {
    return SliderButton(
      backgroundColor: AppColors.primary,
      action: () async {
        await Future.delayed(Duration(seconds: 1));
        onComplete();
        return true;
      },
      label: Text(
        "Go to login page",
        style: normalStyle,
      ),
      icon: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
