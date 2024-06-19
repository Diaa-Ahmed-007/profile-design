import 'package:flutter/material.dart';
import 'package:profile_design/core/styles/app_colors.dart';
import 'package:profile_design/core/utils/text_styles.dart';

class TermsAndConditionsViewBody extends StatefulWidget {
  const TermsAndConditionsViewBody({super.key});

  @override
  State<TermsAndConditionsViewBody> createState() =>
      _TermsAndConditionsViewBodyState();
}

class _TermsAndConditionsViewBodyState
    extends State<TermsAndConditionsViewBody> {
  bool? rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(15 ),
            ),
            child: Column(
              children: [
                Text(
                    style: TextStyles.settingLabels
                        .copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt adipiscing elit, sed do eiusmod tempor incididunt minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                const SizedBox(
                  height: 18 ,
                ),
                Text(
                    style: TextStyles.settingLabels
                        .copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id ")
              ],
            ),
          ),
          const SizedBox(
            height: 20 ,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Checkbox(
                activeColor: AppColors.textColor,
                checkColor: Colors.white,
                side: const BorderSide(color: AppColors.textColor, width: 2),
                value: rememberMe,
                onChanged: (newValue) {
                  setState(() {
                    rememberMe = newValue;
                  });
                },
              ),
              Text(
                "Accept This Terms And Conditions",
                style: TextStyles.settingLabels.copyWith(fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
