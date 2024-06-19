import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/text_styles.dart';

AppBar customSettingAppBar(BuildContext context, {required String title}) {
  return AppBar(
    title: Text(
      title,
      style: TextStyles.settingLabels.copyWith(
          fontSize: TextStyles.getResponsiveFontSize(context, fontSize: 14),
          fontWeight: FontWeight.w700),
    ),
    leadingWidth: 30,
    leading: GestureDetector(
      onTap: () => Navigator.pop(context),
      child: const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Icon(
          Icons.arrow_back_ios_new_outlined,
          size: 20,
        ),
      ),
    ),
  );
}
