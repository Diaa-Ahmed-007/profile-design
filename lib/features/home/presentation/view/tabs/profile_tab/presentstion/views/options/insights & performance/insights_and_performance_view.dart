import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/custom_setting_app_bar.dart';

class InsightsAndPerformanceView extends StatelessWidget {
  const InsightsAndPerformanceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customSettingAppBar(context, title: "Insights & Performance"),
    );
  }
}
