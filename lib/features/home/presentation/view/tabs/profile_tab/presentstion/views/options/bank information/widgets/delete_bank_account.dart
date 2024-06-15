import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:profile_design/core/utils/routes.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/bank%20information/model/bank_account_model.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/bank%20information/provider/lesten_to_bank_accounts.dart';
import 'package:provider/provider.dart';

class DeleteBankAccount extends StatelessWidget {
  const DeleteBankAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LestenToBankAccounts>(context);
    BankAccountModel index =
        ModalRoute.of(context)?.settings.arguments as BankAccountModel;
    return Scaffold(
      backgroundColor: const Color(0xff10284A),
      body: Align(
        alignment: Alignment.center,
        child: SizedBox(
          height: 340.h,
          width: 240.w,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 244.h,
                width: 240.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      'Delete Bank Information',
                      style: TextStyle(
                        color: const Color(0xFFEF5830),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'Are you sure that you want to\ndelete this bank information?',
                      style: TextStyle(
                        color: const Color(0xFF10284A),
                        fontSize: 12.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: 10.w),
                          Expanded(
                            child: SizedBox(
                              height: 47.h,
                              child: OutlinedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.r),
                                  ),
                                  side: BorderSide(
                                      color:
                                          Theme.of(context).colorScheme.error,
                                      width: 1.w),
                                ),
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.error,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                          Expanded(
                            child: SizedBox(
                              height: 47.h,
                              child: ElevatedButton(
                                onPressed: () {
                                  provider.bankAccountList.remove(index);
                                  provider.getBankAccountList();
                                  Navigator.pushReplacementNamed(context, Routes.deleteBankAccountDone);
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.r),
                                    ),
                                    backgroundColor:
                                        Theme.of(context).colorScheme.error),
                                child: Text(
                                  "Delete",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  backgroundColor: const Color(0xffEF5830),
                  maxRadius: 40.r,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: 40.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
