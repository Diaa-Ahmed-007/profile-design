import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/routes.dart';
import 'package:profile_design/features/splash/presentation/view/widgets/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    excuteNaviation();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }

  void excuteNaviation() {
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacementNamed(context, Routes.onboarding),
    );
  }
}
