import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/widgets/option_list.dart';

class SecurityOptionWidget extends StatelessWidget {
  const SecurityOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(16.sp),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            color: Theme.of(context).colorScheme.primary),
        child: ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return OptionList.options[index];
            },
            separatorBuilder: (context, index) => SizedBox(height: 20.h),
            itemCount: OptionList.options.length),
      ),
    );
  }
}
