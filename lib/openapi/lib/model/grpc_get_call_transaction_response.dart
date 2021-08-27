//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcGetCallTransactionResponse {
  /// Returns a new [GrpcGetCallTransactionResponse] instance.
  GrpcGetCallTransactionResponse({
    this.fanUuid,
    this.callTransaction,
  });

  String fanUuid;

  GrpcCallTransaction callTransaction;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcGetCallTransactionResponse &&
     other.fanUuid == fanUuid &&
     other.callTransaction == callTransaction;

  @override
  int get hashCode =>
    (fanUuid == null ? 0 : fanUuid.hashCode) +
    (callTransaction == null ? 0 : callTransaction.hashCode);

  @override
  String toString() => 'GrpcGetCallTransactionResponse[fanUuid=$fanUuid, callTransaction=$callTransaction]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (fanUuid != null) {
      json[r'fan_uuid'] = fanUuid;
    }
    if (callTransaction != null) {
      json[r'call_transaction'] = callTransaction;
    }
    return json;
  }

  /// Returns a new [GrpcGetCallTransactionResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcGetCallTransactionResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcGetCallTransactionResponse(
        fanUuid: json[r'fan_uuid'],
        callTransaction: GrpcCallTransaction.fromJson(json[r'call_transaction']),
    );

  static List<GrpcGetCallTransactionResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcGetCallTransactionResponse>[]
      : json.map((dynamic value) => GrpcGetCallTransactionResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcGetCallTransactionResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcGetCallTransactionResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcGetCallTransactionResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcGetCallTransactionResponse-objects as value to a dart map
  static Map<String, List<GrpcGetCallTransactionResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcGetCallTransactionResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcGetCallTransactionResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

