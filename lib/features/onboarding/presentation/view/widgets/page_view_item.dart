import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_design/core/utils/routes.dart';
import 'package:profile_design/core/utils/text_styles.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.mainAxisAlignment,
    required this.isVisible,
  });
  final String imagePath;
  final String title;
  final String description;
  final MainAxisAlignment mainAxisAlignment;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Visibility(
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          maintainSemantics: true,
          visible: isVisible,
          child: Padding(
            padding: EdgeInsets.only(right: 10.w, top: 40.h),
            child: Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Routes.home);
                },
                child: Text(
                  "Skip",
                  style: TextStyles.onBoardingLabel.copyWith(fontSize: 16.sp),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Row(
          mainAxisAlignment: mainAxisAlignment,
          mainAxisSize: MainAxisSize.max,
          children: [SvgPicture.asset(imagePath)],
        ),
        SizedBox(
          height: 76.h,
        ),
        Expanded(
          child: Text(
            title,
            style: TextStyles.onBoardingLabel,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyles.onBoardingSubLabel,
          ),
        ),
      ],
    );
  }
}
