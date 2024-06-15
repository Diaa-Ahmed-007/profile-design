import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_design/core/styles/app_colors.dart';

class TextStyles {
  static TextStyle settingLabels = TextStyle(
    color: AppColors.textColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle onBoardingLabel = GoogleFonts.poppins(
      color: AppColors.secondary, fontSize: 18.sp, fontWeight: FontWeight.w600);

  static TextStyle onBoardingSubLabel = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: const Color(0xff6E838F),
  );
  static TextStyle titles = TextStyle(
    color: AppColors.textColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w900,
  );
}
