import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/text_styles.dart';

class customAcountTextField extends StatelessWidget {
  const customAcountTextField({
    super.key,
    required this.title,
    required this.controller,
  });
  final String title;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "this field is required";
        }
        return null;
      },
      controller: controller,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xffD5E6FF), width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xffD5E6FF), width: 1)),
        hintText: title,
        hintStyle: TextStyles.settingLabels
            .copyWith(fontSize: 10, fontWeight: FontWeight.w400),
      ),
    );
  }
}
