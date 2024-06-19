import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/cutom_profile_wide_button.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/bank%20information/model/bank_account_model.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/bank%20information/provider/lesten_to_bank_accounts.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/widgets/custom_account_text_field.dart';
import 'package:provider/provider.dart';

class AddBankAccountBody extends StatefulWidget {
  const AddBankAccountBody({super.key});

  @override
  State<AddBankAccountBody> createState() => _AddBankAccountBodyState();
}

class _AddBankAccountBodyState extends State<AddBankAccountBody> {
  final TextEditingController fullName = TextEditingController();

  final TextEditingController bankName = TextEditingController();

  final TextEditingController accountNumber = TextEditingController();
  final TextEditingController nattionalBankOfEgypt = TextEditingController();
  final TextEditingController IBAN = TextEditingController();
  final GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LestenToBankAccounts>(context);
    return Form(
      key: formstate,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bank Information",
                  style: TextStyles.titles,
                ),
                const SizedBox(
                  height: 20,
                ),
                customAcountTextField(
                  title: "Your Full Name",
                  controller: fullName,
                ),
                const SizedBox(
                  height: 15,
                ),
                customAcountTextField(
                  title: "National Bank of Egypt",
                  controller: nattionalBankOfEgypt,
                ),
                const SizedBox(
                  height: 15,
                ),
                customAcountTextField(
                  title: "Bank account number",
                  controller: accountNumber,
                ),
                const SizedBox(
                  height: 15,
                ),
                customAcountTextField(
                  title: "Bank name",
                  controller: bankName,
                ),
                const SizedBox(
                  height: 15,
                ),
                customAcountTextField(
                  title: "IBAN",
                  controller: IBAN,
                ),
              ],
            ),
          ),
          const Spacer(),
          CustomProfileWideButton(
              onpressed: () {
                if (formstate.currentState!.validate()) {
                  provider.bankAccountList.add(BankAccountModel(
                      bankName: BankName.bankCIB,
                      fullName: fullName.text,
                      accountNumber: accountNumber.text,
                      IBAN: IBAN.text));
                  provider.changeBodyIndex(0);
                }
              },
              label: "Save"),
        ],
      ),
    );
  }
}
