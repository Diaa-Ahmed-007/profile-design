import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/assets.dart';
import 'package:profile_design/core/utils/routes.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/widgets/named_button.dart';

class ButtonsLists {
  static double hight = 28;
  static final List<Widget> buttonsList1 = [
    const NamedButton(
      label: 'Bank information',
      imagePath: Assets.assetsImagesBankInformation,
      
      routeName: Routes.bankInformation,
    ),
    SizedBox(
      height: hight,
    ),
    const NamedButton(
      label: 'Transactions History ',
      imagePath: Assets.assetsImagesTransactionsHistory,
      routeName: Routes.transactionsHistory,
    ),
  ];

  static final List<Widget> buttonsList2 = [
    const NamedButton(
      label: 'Insights And Performance',
      imagePath: Assets.assetsImagesPreformance,
      routeName: Routes.insightsAndPerformanceView,
    ),
    SizedBox(
      height: hight,
    ),
    const NamedButton(
      label: 'HEDG Learn',
      imagePath: Assets.assetsImagesSupportAgentBlack24dp,
      routeName: Routes.hedgLearnView,
    ),
  ];

  static final List<Widget> buttonsList3 = [
    const NamedButton(
      label: 'Settings',
      imagePath: Assets.assetsImagesSettings,
      routeName: Routes.settings,
    ),
    SizedBox(
      height: hight,
    ),
    const NamedButton(
      label: 'About Us',
      imagePath: Assets.assetsImagesAboutUs,
      routeName: Routes.aboutUsView,
    ),
    SizedBox(
      height: hight,
    ),
    const NamedButton(
      label: 'Terms & Conditions',
      imagePath: Assets.assetsImagesTermsAndConditions,
      routeName: Routes.termsAndConditionsView,
    ),
    SizedBox(
      height: hight,
    ),
    const NamedButton(
      label: 'Change Language, تغير اللغة',
      imagePath: Assets.assetsImagesDictionaryLanguageBook,
      routeName: Routes.changeLanguageView,
    ),
    SizedBox(
      height: hight,
    ),
    const NamedButton(
      label: 'Support',
      imagePath: Assets.assetsImagesSupport,
      routeName: Routes.supportView,
    ),
  ];
}
