import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_design/core/styles/app_colors.dart';
import 'package:profile_design/core/utils/text_styles.dart';

class NamedButton extends StatelessWidget {
  const NamedButton({
    super.key,
    required this.imagePath,
    required this.label,
    required this.routeName,
    this.isColorRed = false,
  });
  final String imagePath;
  final String label;
  final String routeName;
  final bool? isColorRed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Row(
        children: [
          SvgPicture.asset(
            imagePath,
            height: 17.sp,
          ),
          SizedBox(
            width: 16.w,
          ),
          Text(
            label,
            style: TextStyles.settingLabels.copyWith(
                color: isColorRed == true
                    ? const Color(0xffEF5830)
                    : AppColors.textColor),
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios_sharp)
        ],
      ),
    );
  }
}
