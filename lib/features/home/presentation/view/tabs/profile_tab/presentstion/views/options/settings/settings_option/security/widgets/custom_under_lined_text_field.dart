import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/text_styles.dart';

class CustomUnderLinedTextField extends StatelessWidget {
  const CustomUnderLinedTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.paddingHorizontal,
  });
  final String hintText;
  final TextEditingController controller;
  final double paddingHorizontal;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal ),
      child: TextFormField(
        cursorColor: Colors.grey,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyles.settingLabels.copyWith(
              color: const Color(0xff6E838F),
              fontSize: 10,
              fontWeight: FontWeight.w400),
          errorStyle: const TextStyle(color: Colors.redAccent, fontSize: 16.0),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSecondary,
              width: 1,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.onSecondary,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
