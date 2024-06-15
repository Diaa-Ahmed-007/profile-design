import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/notifications_settings/widgets/notifications_settings_options_widget.dart';

class NotificationsSettingsViewBody extends StatelessWidget {
  const NotificationsSettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Notifications",
              style: TextStyles.titles,
            ),
            const NotificationsSettingsOptionsWidget(
                mainTitle: "Push Notifications",
                subtitile1: "Order Status Updates",
                subtitile2: "HEDG Updates & announcements ",
                isOn1: true,
                isOn2: false),
            const NotificationsSettingsOptionsWidget(
                mainTitle: "Email Notifications",
                subtitile1: "HEDG Updates & announcements",
                subtitile2: "Invoices",
                isOn1: false,
                isOn2: true)
          ],
        ),
      ),
    );
  }
}
