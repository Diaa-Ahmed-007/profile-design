import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/onboarding/presentation/view/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyles.context = context;
    return const Scaffold(body: OnboardingViewBody());
  }
}
