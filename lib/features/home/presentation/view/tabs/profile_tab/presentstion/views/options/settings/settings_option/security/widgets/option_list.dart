import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/assets.dart';
import 'package:profile_design/core/utils/routes.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/widgets/named_button.dart';

class OptionList {
  static List<Widget> options = [
    const NamedButton(
      imagePath: Assets.assetsImagesAboutUs,
      label: "Change password",
      routeName: Routes.changePasswordView,
    ),
    const NamedButton(
      imagePath: Assets.assetsImagesAboutUs,
      label: "Change/Set Security Question",
      routeName: Routes.changeOrSetSecurityQuestionView,
    ),
    const NamedButton(
      imagePath: Assets.assetsImagesAboutUs,
      label: "Add/Change Phone Number",
      routeName: Routes.addOrChangePhoneNumberView,
    ),
    const NamedButton(
      imagePath: Assets.assetsImagesAboutUs,
      label: "Add/Change Trusted Contact",
      routeName: Routes.addOrChangeTrustedContactView,
    ),
    const NamedButton(
      imagePath: Assets.assetsImagesAboutUs,
      label: "Change User Name",
      routeName: Routes.changeUserNameView,
    ),
    const NamedButton(
      imagePath: Assets.assetsImagesAboutUs,
      label: "Change Email",
      routeName: Routes.changeEmailView,
    ),
  ];
}
