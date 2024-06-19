import 'package:flutter/material.dart';
import 'package:profile_design/core/styles/theme.dart';
import 'package:profile_design/core/utils/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoutes(),
      initialRoute: Routes.splash,
      theme: AppTheme.light,
      themeMode: ThemeMode.light,
    );
  }
}
