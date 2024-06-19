import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/custom_setting_app_bar.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/options/add_change_phone_num/widgets/add_or_change_phone_number_view_body.dart';

class AddOrChangePhoneNumberView extends StatelessWidget {
  const AddOrChangePhoneNumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customSettingAppBar(context, title: "Change Phone Number"),
      body: const AddOrChangePhoneNumberViewBody(),
    );
  }
}
