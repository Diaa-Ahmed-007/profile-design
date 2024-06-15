import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_design/core/styles/theme.dart';
import 'package:profile_design/core/utils/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(300, 800),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: Routes.getRoutes(),
        initialRoute: Routes.splash,
        theme: AppTheme.light,
        themeMode: ThemeMode.light,
      ),
    );
  }
}
