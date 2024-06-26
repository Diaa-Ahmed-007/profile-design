import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/bank%20information/provider/lesten_to_bank_accounts.dart';
import 'package:profile_design/my_app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true
      ,builder: (context) =>  ChangeNotifierProvider(
      create: (context) => LestenToBankAccounts(), child: const MyApp()),)
   );
}
