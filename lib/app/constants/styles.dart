import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'dimen.dart';

//22
TextStyle get largeStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: AppDimens.large.sp, color: Colors.black));
}
//20
TextStyle get mediumStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: AppDimens.medium.sp, color: Colors.black));
}
//17
TextStyle get normalStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: AppDimens.normal.sp, color: Colors.black));
}
//15
TextStyle get smallStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: AppDimens.small.sp, color: Colors.black));
}
//14
TextStyle get miniStyle {
  return GoogleFonts.poppins(
      textStyle: TextStyle(fontSize: AppDimens.mini.sp, color: Colors.black));
}