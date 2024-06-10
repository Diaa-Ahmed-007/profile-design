import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_design/core/styles/theme.dart';
import 'package:profile_design/core/utils/routes.dart';
import 'package:profile_design/features/home/presentation/view/home_view.dart';
import 'package:profile_design/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:profile_design/features/splash/presentation/view/splash_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(300, 800),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          Routes.splash: (context) => const SplashView(),
          Routes.home: (context) => const HomeView(),
          Routes.onboarding: (context) => const OnboardingView(),
        },
        initialRoute: Routes.splash,
        theme: AppTheme.light,
        themeMode: ThemeMode.light,
      ),
    );
  }
}
