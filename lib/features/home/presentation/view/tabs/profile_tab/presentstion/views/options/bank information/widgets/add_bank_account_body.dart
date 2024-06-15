import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LestenToBankAccounts>(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16.w),
          margin: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(10.r)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bank Information",
                style: TextStyles.titles,
              ),
              SizedBox(
                height: 20.h,
              ),
              customAcountTextField(
                title: "Your Full Name",
                controller: fullName,
              ),
              SizedBox(
                height: 15.h,
              ),
              customAcountTextField(
                title: "National Bank of Egypt",
                controller: nattionalBankOfEgypt,
              ),
              SizedBox(
                height: 15.h,
              ),
              customAcountTextField(
                title: "Bank account number",
                controller: accountNumber,
              ),
              SizedBox(
                height: 15.h,
              ),
              customAcountTextField(
                title: "Bank name",
                controller: bankName,
              ),
              SizedBox(
                height: 15.h,
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
              provider.bankAccountList.add(BankAccountModel(
                  bankName: BankName.bankCIB,
                  fullName: fullName.text,
                  accountNumber: accountNumber.text,
                  IBAN: IBAN.text));
              provider.changeBodyIndex(0);
            },
            label: "Save"),
      ],
    );
  }
}
