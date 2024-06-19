import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_design/core/utils/assets.dart';
import 'package:profile_design/core/utils/text_styles.dart';

import '../model/transaction_model.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(10 ),
        margin: const EdgeInsets.symmetric(horizontal: 12 , vertical: 8 ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(5 ),
          border: Border.all(color: const Color(0xffD5E6FF), width: 1),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transactionModel.history,
                  style: TextStyles.settingLabels
                      .copyWith(fontSize: 13 , fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                   transactionModel.isSvg? SvgPicture.asset(
                      transactionModel.transactionWayImage,
                    ):Image.asset(transactionModel.transactionWayImage),
                    const SizedBox(
                      width: 2 ,
                    ),
                    Text(
                      transactionModel.transactionWayInfo,
                      style: TextStyles.settingLabels.copyWith(
                          fontSize: 10 , fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 5 ),
                  child: Row(
                    children: [
                      Text(
                        "${transactionModel.amount} EGP",
                        style: TextStyle(
                            color: transactionModel.inTransaction
                                ? Colors.green
                                : Colors.red,
                            fontSize: 14 ,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 4 ,
                      ),
                      transactionModel.inTransaction
                          ? SvgPicture.asset(Assets.assetsImagesInTransaction)
                          : SvgPicture.asset(Assets.assetsImagesOutTransaction),
                    ],
                  ),
                ),
                Text(transactionModel.operation)
              ],
            )
          ],
        ),
      ),
    );
  }
}
