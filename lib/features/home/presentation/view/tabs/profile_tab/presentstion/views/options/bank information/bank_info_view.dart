import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/custom_setting_app_bar.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/bank%20information/provider/lesten_to_bank_accounts.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/bank%20information/widgets/add_bank_account_body.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/bank%20information/widgets/bank_info_view_body.dart';
import 'package:provider/provider.dart';

class BankInfoView extends StatefulWidget {
  const BankInfoView({super.key});

  @override
  State<BankInfoView> createState() => _BankInfoViewState();
}

class _BankInfoViewState extends State<BankInfoView> {
  @override
  void initState() {
    super.initState();
    Provider.of<LestenToBankAccounts>(context, listen: false).bodyIndex = 0;
  }
  final List<Widget> bankInfoBodyList = const [
    BankInfoViewBody(),
    AddBankAccountBody(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LestenToBankAccounts>(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customSettingAppBar(context, title: 'Bank Information'),
      body: bankInfoBodyList[provider.bodyIndex],
    );
  }
}
