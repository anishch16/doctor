import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../app/constants/colors.dart';

class CircleButton extends StatelessWidget {
  final Icon icon;

  const CircleButton({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.blue,
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: icon,
      ),
    );
  }
}