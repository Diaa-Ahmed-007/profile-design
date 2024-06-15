import 'package:flutter/material.dart';
import 'package:profile_design/core/reuseable_componants/custom_setting_app_bar.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/transactions_history/widget/transaction_history_body.dart';

class TransactionsHistoryView extends StatelessWidget {
  const TransactionsHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customSettingAppBar(context, title: "Transactions History"),
      body: const TransactionHistoryBody(),
    );
  }
}
