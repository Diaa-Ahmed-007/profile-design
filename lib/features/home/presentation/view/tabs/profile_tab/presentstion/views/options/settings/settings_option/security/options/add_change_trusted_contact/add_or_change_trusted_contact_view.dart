import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/custom_setting_app_bar.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/options/add_change_trusted_contact/widgets/add_or_change_trusted_contact_view_body.dart';

class AddOrChangeTrustedContactView extends StatelessWidget {
  const AddOrChangeTrustedContactView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customSettingAppBar(context, title: "Change Trusted Contact"),
      body: const AddOrChangeTrustedContactViewBody(),
    );
  }
}
