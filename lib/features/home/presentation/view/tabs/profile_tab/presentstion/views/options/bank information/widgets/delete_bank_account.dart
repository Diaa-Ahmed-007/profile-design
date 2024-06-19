import 'package:flutter/material.dart';
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
          height: 340,
          width: 240,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 244,
                width: 240,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Delete Bank Information',
                      style: TextStyle(
                        color: Color(0xFFEF5830),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Are you sure that you want to\ndelete this bank information?',
                      style: TextStyle(
                        color: Color(0xFF10284A),
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 10),
                          Expanded(
                            child: SizedBox(
                              height: 47,
                              child: OutlinedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  side: BorderSide(
                                      color:
                                          Theme.of(context).colorScheme.error,
                                      width: 1),
                                ),
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.error,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: SizedBox(
                              height: 47,
                              child: ElevatedButton(
                                onPressed: () {
                                  provider.bankAccountList.remove(index);
                                  provider.getBankAccountList();
                                  Navigator.pushReplacementNamed(
                                      context, Routes.deleteBankAccountDone);
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    backgroundColor:
                                        Theme.of(context).colorScheme.error),
                                child: const Text(
                                  "Delete",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  backgroundColor: Color(0xffEF5830),
                  maxRadius: 40,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: 40,
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
