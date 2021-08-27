//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcAppleIapVerificationRequest {
  /// Returns a new [GrpcAppleIapVerificationRequest] instance.
  GrpcAppleIapVerificationRequest({
    this.fanUuid,
    this.productCode,
    this.receiptToken,
  });

  String fanUuid;

  String productCode;

  String receiptToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcAppleIapVerificationRequest &&
     other.fanUuid == fanUuid &&
     other.productCode == productCode &&
     other.receiptToken == receiptToken;

  @override
  int get hashCode =>
    (fanUuid == null ? 0 : fanUuid.hashCode) +
    (productCode == null ? 0 : productCode.hashCode) +
    (receiptToken == null ? 0 : receiptToken.hashCode);

  @override
  String toString() => 'GrpcAppleIapVerificationRequest[fanUuid=$fanUuid, productCode=$productCode, receiptToken=$receiptToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fanUuid != null) {
      json[r'fan_uuid'] = fanUuid;
    }
    if (productCode != null) {
      json[r'productCode'] = productCode;
    }
    if (receiptToken != null) {
      json[r'receiptToken'] = receiptToken;
    }
    return json;
  }

  /// Returns a new [GrpcAppleIapVerificationRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcAppleIapVerificationRequest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcAppleIapVerificationRequest(
        fanUuid: json[r'fan_uuid'],
        productCode: json[r'productCode'],
        receiptToken: json[r'receiptToken'],
    );

  static List<GrpcAppleIapVerificationRequest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcAppleIapVerificationRequest>[]
      : json.map((dynamic value) => GrpcAppleIapVerificationRequest.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcAppleIapVerificationRequest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcAppleIapVerificationRequest>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcAppleIapVerificationRequest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcAppleIapVerificationRequest-objects as value to a dart map
  static Map<String, List<GrpcAppleIapVerificationRequest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcAppleIapVerificationRequest>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcAppleIapVerificationRequest.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

