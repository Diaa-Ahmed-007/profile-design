
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_design/core/utils/text_styles.dart';

class customAcountTextField extends StatelessWidget {
  const customAcountTextField({
    super.key,
    required this.title, required this.controller,
  });
  final String title;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(color: Color(0xffD5E6FF), width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(color: Color(0xffD5E6FF), width: 1)),
        hintText: title,
        hintStyle: TextStyles.settingLabels
            .copyWith(fontSize: 10.sp, fontWeight: FontWeight.w400),
      ),
    );
  }
}
