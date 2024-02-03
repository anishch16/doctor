import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/colors.dart';
import '../../../constants/icons.dart';
import '../../../constants/styles.dart';

class CustomTextField extends StatelessWidget {
  final String leadingIcon;
  final IconData? suffixIcon;
  final String title;
  final String hint;
  const CustomTextField({super.key, required this.leadingIcon, required this.title, required this.hint,  this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Transform.scale(
          scale: 0.6,
          child: SvgPicture.asset(
            leadingIcon,
          ),
        ),
        suffixIcon: Icon(suffixIcon, color: AppColors.lightGrey,),
        labelStyle: normalStyle.copyWith(color: AppColors.lightGrey),
        labelText: title,
        hintText: hint,
      ),
    );
  }
}
