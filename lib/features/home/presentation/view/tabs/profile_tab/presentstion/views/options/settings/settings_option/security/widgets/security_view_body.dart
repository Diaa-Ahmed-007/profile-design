import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/widgets/security_option_widget.dart';

class SecurityViewBody extends StatelessWidget {
  const SecurityViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.h,
          ),
          Text(
            "Security Settings",
            style: TextStyles.titles,
          ),
          SizedBox(
            height: 60.h,
          ),
          const SecurityOptionWidget(),
        ],
      ),
    );
  }
}
