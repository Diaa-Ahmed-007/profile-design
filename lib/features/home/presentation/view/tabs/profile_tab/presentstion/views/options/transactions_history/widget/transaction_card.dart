import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        padding: EdgeInsets.all(10.sp),
        margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(5.r),
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
                      .copyWith(fontSize: 13.sp, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                   transactionModel.isSvg? SvgPicture.asset(
                      transactionModel.transactionWayImage,
                    ):Image.asset(transactionModel.transactionWayImage),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      transactionModel.transactionWayInfo,
                      style: TextStyles.settingLabels.copyWith(
                          fontSize: 10.sp, fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5.w),
                  child: Row(
                    children: [
                      Text(
                        "${transactionModel.amount} EGP",
                        style: TextStyle(
                            color: transactionModel.inTransaction
                                ? Colors.green
                                : Colors.red,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 4.w,
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
