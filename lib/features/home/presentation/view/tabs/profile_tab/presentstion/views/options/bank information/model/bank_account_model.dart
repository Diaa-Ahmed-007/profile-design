class BankAccountModel {
  final String fullName;
  final String accountNumber;
  final String IBAN;
  final BankName bankName;
  int? index;
  BankAccountModel(
      {required this.bankName,
      this.index,
      required this.fullName,
      required this.accountNumber,
      required this.IBAN});
}

enum BankName {
  NationalBankofEgypt,
  bankMisr,
  bankCIB,
}
