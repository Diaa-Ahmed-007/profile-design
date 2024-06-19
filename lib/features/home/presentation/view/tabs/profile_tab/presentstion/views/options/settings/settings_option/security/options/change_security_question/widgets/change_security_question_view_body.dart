import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/cutom_profile_wide_button.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/options/change_security_question/widgets/question_selector_widget.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/widgets/custom_under_lined_text_field.dart';

class ChangeSecurityQuestionViewBody extends StatelessWidget {
  const ChangeSecurityQuestionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController answerController = TextEditingController();
    return IntrinsicHeight(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "We use security question to help you gain access to your account faster if you forget your password.",
                  style: TextStyles.settingLabels.copyWith(fontSize: 11),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: Theme.of(context).colorScheme.onSecondary,
                        width: 2),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Security Question",
                        style: TextStyles.settingLabels,
                      ),
                      const QuestionSelectorWidget(),
                      const SizedBox(
                        height: 60,
                      ),
                      Text(
                        "your Answer",
                        style: TextStyles.settingLabels,
                      ),
                      CustomUnderLinedTextField(
                        hintText: "your Answer",
                        controller: answerController,
                        paddingHorizontal: 0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          CustomProfileWideButton(
              onpressed: () {}, label: "Set Security Question "),
        ],
      ),
    );
  }
}
