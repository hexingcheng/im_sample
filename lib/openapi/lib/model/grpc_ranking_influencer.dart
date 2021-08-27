//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcRankingInfluencer {
  /// Returns a new [GrpcRankingInfluencer] instance.
  GrpcRankingInfluencer({
    this.influencer,
    this.points,
    this.diffRank,
    this.diffType,
  });

  GrpcInfluencer influencer;

  int points;

  int diffRank;

  int diffType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcRankingInfluencer &&
     other.influencer == influencer &&
     other.points == points &&
     other.diffRank == diffRank &&
     other.diffType == diffType;

  @override
  int get hashCode =>
    (influencer == null ? 0 : influencer.hashCode) +
    (points == null ? 0 : points.hashCode) +
    (diffRank == null ? 0 : diffRank.hashCode) +
    (diffType == null ? 0 : diffType.hashCode);

  @override
  String toString() => 'GrpcRankingInfluencer[influencer=$influencer, points=$points, diffRank=$diffRank, diffType=$diffType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (influencer != null) {
      json[r'influencer'] = influencer;
    }
    if (points != null) {
      json[r'points'] = points;
    }
    if (diffRank != null) {
      json[r'diff_rank'] = diffRank;
    }
    if (diffType != null) {
      json[r'diff_type'] = diffType;
    }
    return json;
  }

  /// Returns a new [GrpcRankingInfluencer] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcRankingInfluencer fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcRankingInfluencer(
        influencer: GrpcInfluencer.fromJson(json[r'influencer']),
        points: json[r'points'],
        diffRank: json[r'diff_rank'],
        diffType: json[r'diff_type'],
    );

  static List<GrpcRankingInfluencer> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcRankingInfluencer>[]
      : json.map((dynamic value) => GrpcRankingInfluencer.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcRankingInfluencer> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcRankingInfluencer>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcRankingInfluencer.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcRankingInfluencer-objects as value to a dart map
  static Map<String, List<GrpcRankingInfluencer>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcRankingInfluencer>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcRankingInfluencer.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

