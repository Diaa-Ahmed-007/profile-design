import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/text_styles.dart';

class CustomSwichOptionButton extends StatefulWidget {
  CustomSwichOptionButton({super.key, required this.title, required this.isOn});
  final String title;
  bool isOn;

  @override
  State<CustomSwichOptionButton> createState() =>
      _CustomSwichOptionButtonState();
}

class _CustomSwichOptionButtonState extends State<CustomSwichOptionButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: TextStyles.settingLabels
              .copyWith(fontWeight: FontWeight.w700, fontSize: 11),
        ),
        Switch(
          value: widget.isOn,
          onChanged: (value) {
            widget.isOn = value;
            setState(() {});
          },
          activeColor: Colors.white,
          activeTrackColor: const Color(0xff86DCFF),
        )
      ],
    );
  }
}
