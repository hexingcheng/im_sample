//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcGetBillingByMonthRes {
  /// Returns a new [GrpcGetBillingByMonthRes] instance.
  GrpcGetBillingByMonthRes({
    this.billingAmount,
  });

  int billingAmount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcGetBillingByMonthRes &&
     other.billingAmount == billingAmount;

  @override
  int get hashCode =>
    (billingAmount == null ? 0 : billingAmount.hashCode);

  @override
  String toString() => 'GrpcGetBillingByMonthRes[billingAmount=$billingAmount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (billingAmount != null) {
      json[r'billing_amount'] = billingAmount;
    }
    return json;
  }

  /// Returns a new [GrpcGetBillingByMonthRes] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcGetBillingByMonthRes fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcGetBillingByMonthRes(
        billingAmount: json[r'billing_amount'],
    );

  static List<GrpcGetBillingByMonthRes> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcGetBillingByMonthRes>[]
      : json.map((dynamic value) => GrpcGetBillingByMonthRes.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcGetBillingByMonthRes> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcGetBillingByMonthRes>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcGetBillingByMonthRes.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcGetBillingByMonthRes-objects as value to a dart map
  static Map<String, List<GrpcGetBillingByMonthRes>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcGetBillingByMonthRes>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcGetBillingByMonthRes.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

