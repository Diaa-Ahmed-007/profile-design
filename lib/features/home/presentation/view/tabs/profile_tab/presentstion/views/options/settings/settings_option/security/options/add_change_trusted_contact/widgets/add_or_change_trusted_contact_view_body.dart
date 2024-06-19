import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/cutom_profile_wide_button.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/widgets/custom_phone_number_chooser.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/widgets/custom_under_lined_text_field.dart';

class AddOrChangeTrustedContactViewBody extends StatelessWidget {
  const AddOrChangeTrustedContactViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add/Change Trusted Contact",
                style: TextStyles.titles,
              ),
              const SizedBox(
                height: 40 ,
              ),
              Text(
                "First Name",
                style: TextStyles.titles
                    .copyWith(fontSize: 13, fontWeight: FontWeight.w700),
              ),
              CustomUnderLinedTextField(
                hintText: "Enter Trusted Contact First Name",
                controller: firstNameController,
                paddingHorizontal: 4,
              ),
              const SizedBox(
                height: 35 ,
              ),
              Text(
                "Last Name",
                style: TextStyles.titles
                    .copyWith(fontSize: 13, fontWeight: FontWeight.w700),
              ),
              CustomUnderLinedTextField(
                hintText: "Enter Trusted Contact Last Name",
                controller: lastNameController,
                paddingHorizontal: 4,
              ),
              const SizedBox(
                height: 35 ,
              ),
              Text(
                "Email",
                style: TextStyles.titles
                    .copyWith(fontSize: 13, fontWeight: FontWeight.w700),
              ),
              CustomUnderLinedTextField(
                hintText: "Enter Trusted Contact Email",
                controller: emailController,
                paddingHorizontal: 4,
              ),
              const SizedBox(
                height: 60 ,
              ),
              const CustomPhoneNumberChooser(
                isObscureText: true,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40 ,
        ),
        CustomProfileWideButton(onpressed: () {}, label: "Submit"),
      ],
    );
  }
}
