class TransactionModel {
  final String history;
  final String amount;
  final String transactionWayImage;
  final String transactionWayInfo;
  final bool inTransaction;
  final String operation;
  final bool isSvg;
  TransactionModel(
      {required this.history,
      required this.amount,
      required this.transactionWayImage,
      required this.transactionWayInfo,
      required this.inTransaction,
      required this.operation,required this.isSvg});
}
