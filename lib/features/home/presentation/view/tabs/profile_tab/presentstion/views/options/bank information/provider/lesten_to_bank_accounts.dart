import 'package:flutter/material.dart';
import 'package:profile_design/features/home/presentation/view/tabs/profile_tab/presentstion/views/options/bank%20information/model/bank_account_model.dart';

class LestenToBankAccounts extends ChangeNotifier {
  final List<BankAccountModel> bankAccountList = [
    BankAccountModel(
        bankName: BankName.NationalBankofEgypt,
        fullName: 'Ahmed Ali',
        accountNumber: '123456789',
        IBAN: '123456789'),
    BankAccountModel(
        bankName: BankName.bankMisr,
        fullName: 'Ahmed Ali',
        accountNumber: '123456789',
        IBAN: '123456789'),
    BankAccountModel(
        bankName: BankName.bankCIB,
        fullName: 'Ahmed Ali',
        accountNumber: '123456789',
        IBAN: 'EG************'),
  ];
  getBankAccountList() {
    notifyListeners();
  }
  late int bodyIndex;
  changeBodyIndex(int index) {
    bodyIndex = index;
    notifyListeners();
  }
}
