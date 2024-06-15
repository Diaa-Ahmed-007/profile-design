import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_design/core/utils/assets.dart';
import 'package:profile_design/core/utils/routes.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/widgets/named_button.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: Column(
        children: [
          SizedBox(
            height: 60.h,
          ),
          Container(
            padding: EdgeInsets.all(16.sp),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Column(
              children: [
                const NamedButton(
                    imagePath: Assets.assetsImagesAboutUs,
                    label: "Notifications settings",
                    routeName: Routes.notificationsSettingsView),
                SizedBox(
                  height: 17.h,
                ),
                const NamedButton(
                    imagePath: Assets.assetsImagesAboutUs,
                    label: "Security",
                    routeName: Routes.securitySettingsView),
                SizedBox(
                  height: 17.h,
                ),
                const NamedButton(
                    imagePath: Assets.assetsImagesAboutUs,
                    label: "Privacy",
                    routeName: Routes.privacySettingsView),
                SizedBox(
                  height: 17.h,
                ),
                const NamedButton(
                    imagePath: Assets.assetsImagesAboutUs,
                    label: "FAQs",
                    routeName: Routes.faqsView),
                SizedBox(
                  height: 17.h,
                ),
                const NamedButton(
                  imagePath: Assets.assetsImagesAboutUs,
                  label: "Delete account",
                  routeName: Routes.deleteAccountView,
                  isColorRed: true,
                )
              ],
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 25.w),
            child: Row(
              children: [
                const Icon(
                  Icons.logout_sharp,
                  color: Color(0xff6E838F),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "Log out",
                  style: TextStyle(
                      fontSize: 14.sp,
                      decoration: TextDecoration.underline,
                      color: const Color(0xff6E838F)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
