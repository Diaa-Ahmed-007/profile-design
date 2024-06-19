import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/settings/settings_option/security/widgets/security_option_widget.dart';

class SecurityViewBody extends StatefulWidget {
  const SecurityViewBody({super.key});

  @override
  State<SecurityViewBody> createState() => _SecurityViewBodyState();
}

class _SecurityViewBodyState extends State<SecurityViewBody> {
  bool isBiometricsEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30 ,
          ),
          Text(
            "Security Settings",
            style: TextStyles.titles,
          ),
          const SizedBox(
            height: 60 ,
          ),
          const SecurityOptionWidget(),
          const SizedBox(
            height: 20 ,
          ),
          Container(
            padding: const EdgeInsets.all(8 ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15 ),
              border: Border.all(
                  color: Theme.of(context).colorScheme.onSecondary, width: 2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Biometrics Enabled",
                  style: TextStyles.settingLabels
                      .copyWith(fontSize: 12 , fontWeight: FontWeight.w400),
                ),
                Switch(
                  value: isBiometricsEnabled,
                  onChanged: (value) {
                    isBiometricsEnabled = value;
                    setState(() {});
                  },
                  activeColor: Colors.white,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeTrackColor: const Color(0xff86DCFF),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
