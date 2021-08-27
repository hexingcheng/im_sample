//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcGetTotalNozokiNumByFanMeetingResponse {
  /// Returns a new [GrpcGetTotalNozokiNumByFanMeetingResponse] instance.
  GrpcGetTotalNozokiNumByFanMeetingResponse({
    this.nozokiNum,
  });

  int nozokiNum;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcGetTotalNozokiNumByFanMeetingResponse &&
     other.nozokiNum == nozokiNum;

  @override
  int get hashCode =>
    (nozokiNum == null ? 0 : nozokiNum.hashCode);

  @override
  String toString() => 'GrpcGetTotalNozokiNumByFanMeetingResponse[nozokiNum=$nozokiNum]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (nozokiNum != null) {
      json[r'nozoki_num'] = nozokiNum;
    }
    return json;
  }

  /// Returns a new [GrpcGetTotalNozokiNumByFanMeetingResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcGetTotalNozokiNumByFanMeetingResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcGetTotalNozokiNumByFanMeetingResponse(
        nozokiNum: json[r'nozoki_num'],
    );

  static List<GrpcGetTotalNozokiNumByFanMeetingResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcGetTotalNozokiNumByFanMeetingResponse>[]
      : json.map((dynamic value) => GrpcGetTotalNozokiNumByFanMeetingResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcGetTotalNozokiNumByFanMeetingResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcGetTotalNozokiNumByFanMeetingResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcGetTotalNozokiNumByFanMeetingResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcGetTotalNozokiNumByFanMeetingResponse-objects as value to a dart map
  static Map<String, List<GrpcGetTotalNozokiNumByFanMeetingResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcGetTotalNozokiNumByFanMeetingResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcGetTotalNozokiNumByFanMeetingResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

