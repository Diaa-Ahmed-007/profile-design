import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/custom_setting_app_bar.dart';

import 'widget/hedg_learn_view_body.dart';

class HedgLearnView extends StatelessWidget {
  const HedgLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customSettingAppBar(context, title: "Expert Session"),
      body: const HedgLearnViewBody(),
    );
  }
}
