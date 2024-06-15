import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/custom_setting_app_bar.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/my_account/widget/my_account_view_body.dart';

class MyAccountView extends StatelessWidget {
  const MyAccountView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: customSettingAppBar(context, title: 'My Account'),
      body: const MyAccountViewBody(),
    );
  }
}
