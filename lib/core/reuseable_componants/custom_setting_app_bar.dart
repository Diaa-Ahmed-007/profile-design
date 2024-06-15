
  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_design/core/utils/text_styles.dart';

AppBar customSettingAppBar(BuildContext context,{required String title}) {
    return AppBar(
      title: Text(
        title,
        style: TextStyles.settingLabels
            .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w700),
      ),
      leading: GestureDetector(
        onTap: () => Navigator.pop(context),
        child: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 20.sp,
          ),
        ),
      ),
    );
  }

