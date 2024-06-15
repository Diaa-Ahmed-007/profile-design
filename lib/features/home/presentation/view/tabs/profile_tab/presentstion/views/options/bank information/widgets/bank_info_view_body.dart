import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_design/core/reuseable_componants/cutom_profile_wide_button.dart';
import 'package:profile_design/core/utils/assets.dart';
import 'package:profile_design/core/utils/text_styles.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/bank%20information/provider/lesten_to_bank_accounts.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/bank%20information/widgets/bank_details_display_widget.dart';
import 'package:provider/provider.dart';

class BankInfoViewBody extends StatefulWidget {
  const BankInfoViewBody({super.key});

  @override
  State<BankInfoViewBody> createState() => _BankInfoViewBodyState();
}

class _BankInfoViewBodyState extends State<BankInfoViewBody> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LestenToBankAccounts>(context);
    return Column(
      children: [
        Expanded(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                  child: SizedBox(
                height: 15.h,
              )),
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(20.0.sp),
                  child: Text(
                    "Bank Accounts",
                    style: TextStyles.titles,
                  ),
                ),
              ),
              SliverList.separated(
                  itemBuilder: (context, index) {
                    if (provider.bankAccountList.isEmpty) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 100.h,
                          ),
                          SvgPicture.asset(Assets.assetsImagesEmpty),
                          SizedBox(
                            height: 25.h,
                          ),
                          Text(
                            "You Don't Have Bank Account\nPlease Add Your Bank Account",
                            style: TextStyles.settingLabels,
                          )
                        ],
                      );
                    }
                    provider.bankAccountList[index].index = index;
                    return BankDetailsDisplayWidget(
                      bankAccountModel: provider.bankAccountList[index],
                    );
                  },
                  separatorBuilder: (context, index) => SizedBox(height: 16.h),
                  itemCount: provider.bankAccountList.isEmpty
                      ? 1
                      : provider.bankAccountList.length),
            ],
          ),
        ),
        CustomProfileWideButton(onpressed: () {
          provider.changeBodyIndex(1);
        }, label: "Add Bank Account"),
      ],
    );
  }
}
