import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_design/core/utils/assets.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/transactions_history/model/transaction_model.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/transactions_history/widget/transaction_card.dart';

class TransactionHistoryBody extends StatelessWidget {
  const TransactionHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 15.h,
          ),
        ),
        SliverToBoxAdapter(
          child: historyTitle(history: "Feb 2022"),
        ),
        TransactionCard(
          transactionModel: TransactionModel(
            history: "18 Feb 2022",
            amount: "800",
            transactionWayImage: Assets.assetsImagesBankInformation,
            transactionWayInfo: "Account **** 9351",
            inTransaction: false,
            operation: "Withdraw",
            isSvg: true,
          ),
        ),
        TransactionCard(
          transactionModel: TransactionModel(
              history: "10 Feb 2022",
              amount: "1500",
              transactionWayImage: Assets.assetsImagesCash,
              transactionWayInfo: "VF cash",
              inTransaction: false,
              operation: "Withdraw",
              isSvg: false),
        ),
        TransactionCard(
          transactionModel: TransactionModel(
              history: "6 Feb 2022",
              amount: "300",
              transactionWayImage: Assets.assetsImagesInstaPay,
              transactionWayInfo: "****5231",
              inTransaction: true,
              operation: "Deposit",
              isSvg: false),
        ),
        SliverToBoxAdapter(
          child: historyTitle(history: "Dec 2021"),
        ),
        TransactionCard(
          transactionModel: TransactionModel(
              history: "1 Dec 2021",
              amount: "50",
              transactionWayImage: Assets.assetsImagesVisa,
              transactionWayInfo: "Visa****5231",
              inTransaction: true,
              operation: "Deposit",
              isSvg: true),
        )
      ],
    );
  }

  Padding historyTitle({required String history}) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, left: 16.w),
      child: Text(
        history,
        style: TextStyles.settingLabels
            .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w900),
      ),
    );
  }
}
