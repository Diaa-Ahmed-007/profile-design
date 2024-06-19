import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/routes.dart';
import 'package:profile_design/core/utils/text_styles.dart';

class ProfileDetailsWidget extends StatelessWidget {
  const ProfileDetailsWidget(
      {super.key,
      required this.isEmailVisable,
      required this.isMoreIconVisable});
  final bool isEmailVisable;
  final bool isMoreIconVisable;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      enableFeedback: false,
      onTap: () {
        isEmailVisable
            ? Navigator.pushNamed(context, Routes.myAccountView)
            : null;
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10)
            ],
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 42,
                  width: 42,
                  decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .secondary
                           .withOpacity(0.1),
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.person,
                    size: 24,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jacob Smith",
                      style: TextStyles.settingLabels.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                    Visibility(
                      visible: isEmailVisable,
                      child: Text(
                        'jacobsmith@example.com',
                        style: TextStyles.onBoardingLabel.copyWith(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 15,
            ),
            Visibility(
                visible: isMoreIconVisable,
                child: const Icon(Icons.more_vert_rounded, size: 20))
          ],
        ),
      ),
    );
  }
}
