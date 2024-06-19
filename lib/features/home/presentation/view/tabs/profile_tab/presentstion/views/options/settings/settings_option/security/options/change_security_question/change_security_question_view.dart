import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/custom_setting_app_bar.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/options/change_security_question/widgets/change_security_question_view_body.dart';

class ChangeSecurityQuestionView extends StatelessWidget {
  const ChangeSecurityQuestionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customSettingAppBar(context, title: "Change Security Question"),
      body: const ChangeSecurityQuestionViewBody(),
    );
  }
}
