import 'package:doctor/app/constants/colors.dart';
import 'package:doctor/app/constants/styles.dart';
import 'package:flutter/material.dart';

class LargeButton extends StatelessWidget {
  final String title;
  const LargeButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.blue,
        borderRadius: BorderRadius.circular(12)
      ),
      width: double.infinity,

      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0),
        child: Center(
          child: Text(
            title,
            style: normalStyle.copyWith(color: AppColors.primary),
          ),
        ),
      ),
    );
  }
}
