import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/cutom_profile_wide_button.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/widgets/custom_under_lined_text_field.dart';

class ChangeUserNameViewBody extends StatelessWidget {
  const ChangeUserNameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController newUserNameController = TextEditingController();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Current User Name:",
                style: TextStyles.titles,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text(
                  "Jacob Smith",
                  style: TextStyles.settingLabels,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "New User Name:",
                style: TextStyles.titles,
              ),
              CustomUnderLinedTextField(
                hintText: "Enter New User Name",
                controller: newUserNameController,
                paddingHorizontal: 4,
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        CustomProfileWideButton(onpressed: () {}, label: "Sumit"),
        const Spacer(),
      ],
    );
  }
}
