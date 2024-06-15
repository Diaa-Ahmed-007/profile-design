import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_design/core/utils/routes.dart';
import 'package:profile_design/core/utils/text_styles.dart';

class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget(
      {super.key,
      required this.isEmailVisable,
      required this.isMoreIconVisable});
  final bool isEmailVisable;
  final bool isMoreIconVisable;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      onTap: () {
        isEmailVisable
            ? Navigator.pushNamed(context, Routes.myAccountView)
            : null;
      },
      child: Container(
        padding: EdgeInsets.all(16.w),
        margin: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10.r)
            ],
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10.r)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 42.h,
                  width: 42.w,
                  decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .secondary
                          .withOpacity(0.1),
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.person,
                    size: 24.sp,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jacob Smith",
                      style: TextStyles.settingLabels.copyWith(
                          fontSize: 14.sp, fontWeight: FontWeight.w700),
                    ),
                    Visibility(
                      visible: isEmailVisable,
                      child: Text(
                        'jacobsmith@example.com',
                        style: TextStyles.onBoardingLabel.copyWith(
                            fontSize: 10.sp, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 15.w,
            ),
            Visibility(
                visible: isMoreIconVisable,
                child: Icon(Icons.more_vert_rounded, size: 20.sp))
          ],
        ),
      ),
    );
  }
}
