import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/cutom_profile_wide_button.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/widgets/custom_phone_number_chooser.dart';

class AddOrChangePhoneNumberViewBody extends StatelessWidget {
  const AddOrChangePhoneNumberViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16 ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 25 ,
              ),
              Text(
                "Add/Change Your Phone Number",
                style: TextStyles.titles,
              ),
              const SizedBox(
                height: 25 ,
              ),
              Text(
                "We use your unique phone number to verify your\nidentity.",
                style: TextStyles.settingLabels
                    .copyWith(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 50 ,
              ),
              const CustomPhoneNumberChooser(),
            ],
          ),
        ),
        const Spacer(),
        CustomProfileWideButton(onpressed: () {}, label: "Set Phone Question"),
        const Spacer()
      ],
    );
  }
}
