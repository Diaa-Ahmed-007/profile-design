import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/custom_setting_app_bar.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/notifications_settings/widgets/notifications_settings_view_body.dart';

class NotificationsSettingsView extends StatelessWidget {
  const NotificationsSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customSettingAppBar(context, title: "Notifications Settings"),
      body: const NotificationsSettingsViewBody(),
    );
  }
}
