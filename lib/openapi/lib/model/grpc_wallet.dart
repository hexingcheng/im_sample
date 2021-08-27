//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcWallet {
  /// Returns a new [GrpcWallet] instance.
  GrpcWallet({
    this.walletId,
    this.serviceId,
    this.userId,
    this.currencyId,
    this.balance,
    this.paidBalance,
    this.earnedBalance,
    this.pointBalance,
    this.breakDown = const [],
  });

  String walletId;

  String serviceId;

  String userId;

  String currencyId;

  int balance;

  int paidBalance;

  int earnedBalance;

  int pointBalance;

  List<GrpcBreakDown> breakDown;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcWallet &&
     other.walletId == walletId &&
     other.serviceId == serviceId &&
     other.userId == userId &&
     other.currencyId == currencyId &&
     other.balance == balance &&
     other.paidBalance == paidBalance &&
     other.earnedBalance == earnedBalance &&
     other.pointBalance == pointBalance &&
     other.breakDown == breakDown;

  @override
  int get hashCode =>
    (walletId == null ? 0 : walletId.hashCode) +
    (serviceId == null ? 0 : serviceId.hashCode) +
    (userId == null ? 0 : userId.hashCode) +
    (currencyId == null ? 0 : currencyId.hashCode) +
    (balance == null ? 0 : balance.hashCode) +
    (paidBalance == null ? 0 : paidBalance.hashCode) +
    (earnedBalance == null ? 0 : earnedBalance.hashCode) +
    (pointBalance == null ? 0 : pointBalance.hashCode) +
    (breakDown == null ? 0 : breakDown.hashCode);

  @override
  String toString() => 'GrpcWallet[walletId=$walletId, serviceId=$serviceId, userId=$userId, currencyId=$currencyId, balance=$balance, paidBalance=$paidBalance, earnedBalance=$earnedBalance, pointBalance=$pointBalance, breakDown=$breakDown]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (walletId != null) {
      json[r'wallet_id'] = walletId;
    }
    if (serviceId != null) {
      json[r'service_id'] = serviceId;
    }
    if (userId != null) {
      json[r'user_id'] = userId;
    }
    if (currencyId != null) {
      json[r'currency_id'] = currencyId;
    }
    if (balance != null) {
      json[r'balance'] = balance;
    }
    if (paidBalance != null) {
      json[r'paid_balance'] = paidBalance;
    }
    if (earnedBalance != null) {
      json[r'earned_balance'] = earnedBalance;
    }
    if (pointBalance != null) {
      json[r'point_balance'] = pointBalance;
    }
    if (breakDown != null) {
      json[r'break_down'] = breakDown;
    }
    return json;
  }

  /// Returns a new [GrpcWallet] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcWallet fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcWallet(
        walletId: json[r'wallet_id'],
        serviceId: json[r'service_id'],
        userId: json[r'user_id'],
        currencyId: json[r'currency_id'],
        balance: json[r'balance'],
        paidBalance: json[r'paid_balance'],
        earnedBalance: json[r'earned_balance'],
        pointBalance: json[r'point_balance'],
        breakDown: GrpcBreakDown.listFromJson(json[r'break_down']),
    );

  static List<GrpcWallet> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcWallet>[]
      : json.map((dynamic value) => GrpcWallet.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcWallet> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcWallet>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcWallet.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcWallet-objects as value to a dart map
  static Map<String, List<GrpcWallet>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcWallet>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcWallet.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

