import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/custom_setting_app_bar.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/options/change_user_name/widgets/change_user_name_view_body.dart';

class ChangeUserNameView extends StatelessWidget {
  const ChangeUserNameView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customSettingAppBar(context, title: "Change User Name"),
      body: const ChangeUserNameViewBody(),
    );
  }
}
