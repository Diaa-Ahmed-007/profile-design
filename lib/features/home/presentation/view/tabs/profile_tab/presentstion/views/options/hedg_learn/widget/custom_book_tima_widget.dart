import 'package:flutter/material.dart';
import 'package:profile_design/core/styles/app_colors.dart';
import 'package:profile_design/core/utils/text_styles.dart';

class CustomBookTimaWidget extends StatelessWidget {
  const CustomBookTimaWidget(
      {super.key,
      required this.onTap,
      required this.title,
      required this.icon});
  final Function() onTap;
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12 ),
        margin: const EdgeInsets.all(8 ),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(15 ),
            border: Border.all(
                color: Theme.of(context).colorScheme.onSecondary, width: 2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyles.settingLabels
                  .copyWith(fontSize: 12 , fontWeight: FontWeight.w400),
            ),
            Icon(icon, color: AppColors.textColor, size: 22 )
          ],
        ),
      ),
    );
  }
}
