import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/cutom_profile_wide_button.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/widgets/custom_account_text_field.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController currentPasswordController = TextEditingController();
    TextEditingController newPasswordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.primary,
          ),
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Change Password",
                style: TextStyles.titles,
              ),
              const SizedBox(
                height: 20,
              ),
              customAcountTextField(
                  title: "Current Password",
                  controller: currentPasswordController),
              const SizedBox(
                height: 20,
              ),
              customAcountTextField(
                  title: "new password", controller: newPasswordController),
              const SizedBox(
                height: 20,
              ),
              customAcountTextField(
                  title: "re-password", controller: confirmPasswordController),
            ],
          ),
        ),
        const Spacer(),
        CustomProfileWideButton(onpressed: () {}, label: "Save"),
      ],
    );
  }
}
