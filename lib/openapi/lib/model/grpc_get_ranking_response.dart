//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcGetRankingResponse {
  /// Returns a new [GrpcGetRankingResponse] instance.
  GrpcGetRankingResponse({
    this.weeklyRanking = const [],
    this.monthlyRanking = const [],
  });

  List<GrpcRankingInfluencer> weeklyRanking;

  List<GrpcRankingInfluencer> monthlyRanking;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcGetRankingResponse &&
     other.weeklyRanking == weeklyRanking &&
     other.monthlyRanking == monthlyRanking;

  @override
  int get hashCode =>
    (weeklyRanking == null ? 0 : weeklyRanking.hashCode) +
    (monthlyRanking == null ? 0 : monthlyRanking.hashCode);

  @override
  String toString() => 'GrpcGetRankingResponse[weeklyRanking=$weeklyRanking, monthlyRanking=$monthlyRanking]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (weeklyRanking != null) {
      json[r'weekly_ranking'] = weeklyRanking;
    }
    if (monthlyRanking != null) {
      json[r'monthly_ranking'] = monthlyRanking;
    }
    return json;
  }

  /// Returns a new [GrpcGetRankingResponse] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcGetRankingResponse fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcGetRankingResponse(
        weeklyRanking: GrpcRankingInfluencer.listFromJson(json[r'weekly_ranking']),
        monthlyRanking: GrpcRankingInfluencer.listFromJson(json[r'monthly_ranking']),
    );

  static List<GrpcGetRankingResponse> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcGetRankingResponse>[]
      : json.map((dynamic value) => GrpcGetRankingResponse.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcGetRankingResponse> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcGetRankingResponse>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcGetRankingResponse.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcGetRankingResponse-objects as value to a dart map
  static Map<String, List<GrpcGetRankingResponse>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcGetRankingResponse>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcGetRankingResponse.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

