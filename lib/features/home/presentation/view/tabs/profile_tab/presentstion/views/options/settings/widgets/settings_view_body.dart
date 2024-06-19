import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/assets.dart';
import 'package:profile_design/core/utils/routes.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/widgets/named_button.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Column(
              children: [
                NamedButton(
                    imagePath: Assets.assetsImagesAboutUs,
                    label: "Notifications settings",
                    routeName: Routes.notificationsSettingsView),
                SizedBox(
                  height: 17,
                ),
                NamedButton(
                    imagePath: Assets.assetsImagesAboutUs,
                    label: "Security",
                    routeName: Routes.securitySettingsView),
                SizedBox(
                  height: 17,
                ),
                NamedButton(
                    imagePath: Assets.assetsImagesAboutUs,
                    label: "Privacy",
                    routeName: Routes.privacySettingsView),
                SizedBox(
                  height: 17,
                ),
                NamedButton(
                    imagePath: Assets.assetsImagesAboutUs,
                    label: "FAQs",
                    routeName: Routes.faqsView),
                SizedBox(
                  height: 17,
                ),
                NamedButton(
                  imagePath: Assets.assetsImagesAboutUs,
                  label: "Delete account",
                  routeName: Routes.deleteAccountView,
                  isColorRed: true,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  Routes.onboarding,
                  (route) {
                    return false;
                  },
                );
              },
              child: const Row(
                children: [
                  Icon(
                    Icons.logout_sharp,
                    color: Color(0xff6E838F),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Log out",
                    style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        color: Color(0xff6E838F)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
