import 'package:flutter/material.dart';
import 'package:flutter_phone_number_field/flutter_phone_number_field.dart';
import 'package:profile_design/core/utils/text_styles.dart';

class CustomPhoneNumberChooser extends StatelessWidget {
  const CustomPhoneNumberChooser({super.key, this.isObscureText = false});
  final bool isObscureText;
  @override
  Widget build(BuildContext context) {
    return FlutterPhoneNumberField(
      obscureText: isObscureText,
      initialCountryCode: "EG",
      pickerDialogStyle: PickerDialogStyle(
        countryFlagStyle: const TextStyle(fontSize: 17),
      ),
      decoration: InputDecoration(
        hintText: 'Phone Number',
        focusedErrorBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red, width: 1)),
        errorBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.red, width: 1)),
        hintStyle: TextStyles.settingLabels
            .copyWith(fontSize: 10, fontWeight: FontWeight.w400),
        enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xffD5E6FF), width: 1)),
        focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xffD5E6FF), width: 1)),
      ),
      languageCode: "en",
      onChanged: (phone) {},
      onCountryChanged: (country) {},
      dropdownIconPosition: IconPosition.trailing,
      showDropdownIcon: false,
      flagsButtonPadding: const EdgeInsets.only(right: 8),
      cursorColor: Colors.grey,
    );
  }
}
