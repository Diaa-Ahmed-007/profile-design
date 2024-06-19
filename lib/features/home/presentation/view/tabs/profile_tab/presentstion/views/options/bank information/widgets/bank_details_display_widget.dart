import 'package:flutter/material.dart';
import 'package:profile_design/core/utils/routes.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/bank%20information/model/bank_account_model.dart';
import 'package:provider/provider.dart';

import '../provider/lesten_to_bank_accounts.dart';

class BankDetailsDisplayWidget extends StatelessWidget {
  const BankDetailsDisplayWidget({super.key, required this.bankAccountModel});
  final BankAccountModel bankAccountModel;

  final List<String> menuOptions = const ['Edit', 'Delete'];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LestenToBankAccounts>(context);
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10 ),
      ),
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              bankLabels(
                  label: "Account Name", value: bankAccountModel.fullName),
              const SizedBox(
                height: 15 ,
              ),
              bankLabels(
                  label: "Bank Name", value: bankAccountModel.bankName.name),
              const SizedBox(
                height: 15 ,
              ),
              bankLabels(
                  label: "Account Number",
                  value: bankAccountModel.accountNumber),
              const SizedBox(
                height: 15 ,
              ),
              bankLabels(label: "IBAN", value: bankAccountModel.IBAN),
            ],
          ),
          const Spacer(),
          PopupMenuButton<String>(
            icon: const Icon(
              Icons.more_vert,
            ),
            enableFeedback: false,
            popUpAnimationStyle: AnimationStyle(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInExpo),
            position: PopupMenuPosition.under,
            color: Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10 ),
              side: const BorderSide(color: Color(0xffD5E6FF), width: 2),
            ),
            style: ElevatedButton.styleFrom(
                enableFeedback: false, shadowColor: Colors.transparent),
            iconSize: 24,
            onSelected: (value) {
              if (value == 'Edit') {
                provider.changeBodyIndex(1);
              } else {
                Navigator.pushNamed(context, Routes.deleteBankAccount,
                    arguments: bankAccountModel);
              }
            },
            itemBuilder: (BuildContext context) {
              List<PopupMenuEntry<String>> itemsWithDivider = [];
              for (int i = 0; i < menuOptions.length; i++) {
                itemsWithDivider.add(
                  PopupMenuItem<String>(
                    value: menuOptions[i],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          menuOptions[i] == 'Edit' ? Icons.edit : Icons.delete,
                          color: Colors.black,
                          size: 15,
                        ),
                        const SizedBox(width: 8 ),
                        Text(menuOptions[i]),
                      ],
                    ),
                  ),
                );
                if (i < menuOptions.length - 1) {
                  itemsWithDivider.add(
                    const PopupMenuDivider(),
                  );
                }
              }
              return itemsWithDivider;
            },
          ),
        ],
      ),
    );
  }

  Column bankLabels({required String label, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyles.settingLabels
              .copyWith(fontSize: 10, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 2 ,
        ),
        Text(
          value,
          style: TextStyles.settingLabels
              .copyWith(fontSize: 12, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
