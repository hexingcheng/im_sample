//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcGetHavePaidBalanceFanNumResponse {
  /// Returns a new [GrpcGetHavePaidBalanceFanNumResponse] instance.
  GrpcGetHavePaidBalanceFanNumResponse({
    this.num_,
    this.totalPaidNum,
  });

  int num_;

  int totalPaidNum;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcGetHavePaidBalanceFanNumResponse &&
     other.num_ == num_ &&
     other.totalPaidNum == totalPaidNum;

  @override
  int get hashCode =>
    (num_ == null ? 0 : num_.hashCode) +
    (totalPaidNum == null ? 0 : totalPaidNum.hashCode);

  @override
  String toString() => 'GrpcGetHavePaidBalanceFanNumResponse[num_=$num_, totalPaidNum=$totalPaidNum]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (num_ != null) {
      json[r'num'] = num_;
    }
    if (totalPaidNum != null) {
      json[r'total_paid_num'] = totalPaidNum;
    }
    return json;
  }

  /// Returns a new [GrpcGetHavePaidBalanceFanNumResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcGetHavePaidBalanceFanNumResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcGetHavePaidBalanceFanNumResponse(
        num_: json[r'num'],
        totalPaidNum: json[r'total_paid_num'],
    );

  static List<GrpcGetHavePaidBalanceFanNumResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcGetHavePaidBalanceFanNumResponse>[]
      : json.map((dynamic value) => GrpcGetHavePaidBalanceFanNumResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcGetHavePaidBalanceFanNumResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcGetHavePaidBalanceFanNumResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcGetHavePaidBalanceFanNumResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcGetHavePaidBalanceFanNumResponse-objects as value to a dart map
  static Map<String, List<GrpcGetHavePaidBalanceFanNumResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcGetHavePaidBalanceFanNumResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcGetHavePaidBalanceFanNumResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

