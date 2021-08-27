//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcInfluencer {
  /// Returns a new [GrpcInfluencer] instance.
  GrpcInfluencer({
    this.annotationId,
    this.apsToken,
    this.introduction,
    this.displayName,
    this.mainSquareImageUri,
    this.mainRectangleImageUri,
    this.imageUri = const [],
    this.sex,
    this.uuid,
    this.birth,
    this.prefecture,
    this.influencerCredential,
    this.genre = const [],
    this.dynamicLink,
    this.twitterUrl,
    this.instagramUrl,
    this.tiktokUrl,
    this.youtubeUrl,
    this.customLinkName,
    this.customLinkUrl,
  });

  String annotationId;

  String apsToken;

  String introduction;

  String displayName;

  String mainSquareImageUri;

  String mainRectangleImageUri;

  List<String> imageUri;

  GrpcInfluencerSex sex;

  String uuid;

  GrpcTimestamp birth;

  String prefecture;

  GrpcInfluencerCredential influencerCredential;

  List<GrpcGenre> genre;

  String dynamicLink;

  String twitterUrl;

  String instagramUrl;

  String tiktokUrl;

  String youtubeUrl;

  String customLinkName;

  String customLinkUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcInfluencer &&
     other.annotationId == annotationId &&
     other.apsToken == apsToken &&
     other.introduction == introduction &&
     other.displayName == displayName &&
     other.mainSquareImageUri == mainSquareImageUri &&
     other.mainRectangleImageUri == mainRectangleImageUri &&
     other.imageUri == imageUri &&
     other.sex == sex &&
     other.uuid == uuid &&
     other.birth == birth &&
     other.prefecture == prefecture &&
     other.influencerCredential == influencerCredential &&
     other.genre == genre &&
     other.dynamicLink == dynamicLink &&
     other.twitterUrl == twitterUrl &&
     other.instagramUrl == instagramUrl &&
     other.tiktokUrl == tiktokUrl &&
     other.youtubeUrl == youtubeUrl &&
     other.customLinkName == customLinkName &&
     other.customLinkUrl == customLinkUrl;

  @override
  int get hashCode =>
    (annotationId == null ? 0 : annotationId.hashCode) +
    (apsToken == null ? 0 : apsToken.hashCode) +
    (introduction == null ? 0 : introduction.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (mainSquareImageUri == null ? 0 : mainSquareImageUri.hashCode) +
    (mainRectangleImageUri == null ? 0 : mainRectangleImageUri.hashCode) +
    (imageUri == null ? 0 : imageUri.hashCode) +
    (sex == null ? 0 : sex.hashCode) +
    (uuid == null ? 0 : uuid.hashCode) +
    (birth == null ? 0 : birth.hashCode) +
    (prefecture == null ? 0 : prefecture.hashCode) +
    (influencerCredential == null ? 0 : influencerCredential.hashCode) +
    (genre == null ? 0 : genre.hashCode) +
    (dynamicLink == null ? 0 : dynamicLink.hashCode) +
    (twitterUrl == null ? 0 : twitterUrl.hashCode) +
    (instagramUrl == null ? 0 : instagramUrl.hashCode) +
    (tiktokUrl == null ? 0 : tiktokUrl.hashCode) +
    (youtubeUrl == null ? 0 : youtubeUrl.hashCode) +
    (customLinkName == null ? 0 : customLinkName.hashCode) +
    (customLinkUrl == null ? 0 : customLinkUrl.hashCode);

  @override
  String toString() => 'GrpcInfluencer[annotationId=$annotationId, apsToken=$apsToken, introduction=$introduction, displayName=$displayName, mainSquareImageUri=$mainSquareImageUri, mainRectangleImageUri=$mainRectangleImageUri, imageUri=$imageUri, sex=$sex, uuid=$uuid, birth=$birth, prefecture=$prefecture, influencerCredential=$influencerCredential, genre=$genre, dynamicLink=$dynamicLink, twitterUrl=$twitterUrl, instagramUrl=$instagramUrl, tiktokUrl=$tiktokUrl, youtubeUrl=$youtubeUrl, customLinkName=$customLinkName, customLinkUrl=$customLinkUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (annotationId != null) {
      json[r'annotation_id'] = annotationId;
    }
    if (apsToken != null) {
      json[r'aps_token'] = apsToken;
    }
    if (introduction != null) {
      json[r'introduction'] = introduction;
    }
    if (displayName != null) {
      json[r'display_name'] = displayName;
    }
    if (mainSquareImageUri != null) {
      json[r'main_square_image_uri'] = mainSquareImageUri;
    }
    if (mainRectangleImageUri != null) {
      json[r'main_rectangle_image_uri'] = mainRectangleImageUri;
    }
    if (imageUri != null) {
      json[r'image_uri'] = imageUri;
    }
    if (sex != null) {
      json[r'sex'] = sex;
    }
    if (uuid != null) {
      json[r'uuid'] = uuid;
    }
    if (birth != null) {
      json[r'birth'] = birth;
    }
    if (prefecture != null) {
      json[r'prefecture'] = prefecture;
    }
    if (influencerCredential != null) {
      json[r'influencerCredential'] = influencerCredential;
    }
    if (genre != null) {
      json[r'genre'] = genre;
    }
    if (dynamicLink != null) {
      json[r'dynamic_link'] = dynamicLink;
    }
    if (twitterUrl != null) {
      json[r'twitter_url'] = twitterUrl;
    }
    if (instagramUrl != null) {
      json[r'instagram_url'] = instagramUrl;
    }
    if (tiktokUrl != null) {
      json[r'tiktok_url'] = tiktokUrl;
    }
    if (youtubeUrl != null) {
      json[r'youtube_url'] = youtubeUrl;
    }
    if (customLinkName != null) {
      json[r'custom_link_name'] = customLinkName;
    }
    if (customLinkUrl != null) {
      json[r'custom_link_url'] = customLinkUrl;
    }
    return json;
  }

  /// Returns a new [GrpcInfluencer] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcInfluencer fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcInfluencer(
        annotationId: json[r'annotation_id'],
        apsToken: json[r'aps_token'],
        introduction: json[r'introduction'],
        displayName: json[r'display_name'],
        mainSquareImageUri: json[r'main_square_image_uri'],
        mainRectangleImageUri: json[r'main_rectangle_image_uri'],
        imageUri: json[r'image_uri'] == null
          ? null
          : (json[r'image_uri'] as List).cast<String>(),
        sex: GrpcInfluencerSex.fromJson(json[r'sex']),
        uuid: json[r'uuid'],
        birth: GrpcTimestamp.fromJson(json[r'birth']),
        prefecture: json[r'prefecture'],
        influencerCredential: GrpcInfluencerCredential.fromJson(json[r'influencerCredential']),
        genre: GrpcGenre.listFromJson(json[r'genre']),
        dynamicLink: json[r'dynamic_link'],
        twitterUrl: json[r'twitter_url'],
        instagramUrl: json[r'instagram_url'],
        tiktokUrl: json[r'tiktok_url'],
        youtubeUrl: json[r'youtube_url'],
        customLinkName: json[r'custom_link_name'],
        customLinkUrl: json[r'custom_link_url'],
    );

  static List<GrpcInfluencer> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcInfluencer>[]
      : json.map((dynamic value) => GrpcInfluencer.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcInfluencer> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcInfluencer>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcInfluencer.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcInfluencer-objects as value to a dart map
  static Map<String, List<GrpcInfluencer>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcInfluencer>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcInfluencer.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

