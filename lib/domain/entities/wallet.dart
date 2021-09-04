class Wallet {
  Wallet({
    required this.id,
    required this.serviceId,
    required this.userId,
    required this.currencyId,
    required this.balance,
    required this.paidBalance,
    required this.earnedBalance,
    required this.pointBalance,
    required this.breakDown,
  });
  String id;
  String serviceId;
  String userId;
  String currencyId;
  int balance;
  int paidBalance;
  int earnedBalance;
  int pointBalance;
  List<BreakDown> breakDown;
}

class BreakDown {
  BreakDown({required this.point, required this.expireDate});
  int? point;
  DateTime? expireDate;
}
