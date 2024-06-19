import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profile_design/core/styles/app_colors.dart';

class TextStyles {
  static TextStyle settingLabels = TextStyle(
    color: AppColors.textColor,
    fontSize: getResponsiveFontSize(context, fontSize: 12),
    fontWeight: FontWeight.w500,
  );
  static late BuildContext context;
  static TextStyle onBoardingLabel = GoogleFonts.poppins(
      color: AppColors.secondary,
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600);

  static TextStyle onBoardingSubLabel = TextStyle(
    fontSize: getResponsiveFontSize(context, fontSize: 12),
    fontWeight: FontWeight.w400,
    color: const Color(0xff6E838F),
  );
  static TextStyle titles = TextStyle(
    color: AppColors.textColor,
    fontSize: getResponsiveFontSize(context, fontSize: 14),
    fontWeight: FontWeight.w900,
  );
  static double getResponsiveFontSize(BuildContext context,
      {required fontSize}) {
    double scaleFactor = getScaleFactor(context);
    double responsiveFontSize = fontSize * scaleFactor;
    double lowerLimit = fontSize * 0.6;
    double upperLimit = fontSize * 1.4;
    log("fontSize: $fontSize,lowerLimit: $lowerLimit,upperLimit: $upperLimit,final fontSize: ${responsiveFontSize.clamp(lowerLimit, upperLimit)}");
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  static double getScaleFactor(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width < 600) {
      return width / 400;
    } else if (width < 900) {
      return width / 750;
    } else {
      return width / 1000;
    }
  }
}
