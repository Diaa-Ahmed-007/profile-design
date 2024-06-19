import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/cutom_profile_wide_button.dart';
import 'package:profile_design/core/utils/text_styles.dart';

import '../../../widgets/custom_under_lined_text_field.dart';

class ChangeEmailViewBody extends StatelessWidget {
  const ChangeEmailViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController newEmailController = TextEditingController();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Current Email:",
                style: TextStyles.titles,
              ),
              Text(
                "jacobsmith@example.com",
                style: TextStyles.settingLabels,
              ),
              const SizedBox(
                height: 25 ,
              ),
              Text(
                "New Email:",
                style: TextStyles.titles,
              ),
              CustomUnderLinedTextField(
                hintText: "EX: User@gmail.com",
                controller: newEmailController,
                paddingHorizontal: 4,
              ),
              const SizedBox(
                height: 30 ,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(15 ),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.onSecondary,
                      width: 2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Note That:",
                      style: TextStyles.titles
                          .copyWith(fontWeight: FontWeight.w800),
                    ),
                    const SizedBox(
                      height: 10 ,
                    ),
                    Text(
                      "After changing your email, you will be logged out and can only login with the new email and any future communications will be sent to your new email.",
                      style: TextStyles.settingLabels
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 10),
                    ),
                    Divider(
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                    Text(
                      "Incase you entered a new email that links to an unverified account, the other account will be deleted.",
                      style: TextStyles.settingLabels
                          .copyWith(fontWeight: FontWeight.w400, fontSize: 10),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const Spacer(),
        CustomProfileWideButton(
          onpressed: () {},
          label: "Sumit",
        ),
        const Spacer()
      ],
    );
  }
}
