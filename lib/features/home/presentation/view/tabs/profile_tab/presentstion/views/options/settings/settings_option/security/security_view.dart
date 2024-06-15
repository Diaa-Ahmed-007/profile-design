import 'package:flutter/material.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/widgets/security_view_body.dart';

import '../../../../../../../../../../../../core/reuseable_componants/custom_setting_app_bar.dart';

class SecurityView extends StatelessWidget {
  const SecurityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customSettingAppBar(context, title: "Security"),
      body: const SecurityViewBody(),
    );
  }
}
