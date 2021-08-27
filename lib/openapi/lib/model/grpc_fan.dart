//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcFan {
  /// Returns a new [GrpcFan] instance.
  GrpcFan({
    this.birth,
    this.annotationId,
    this.introduction,
    this.voipToken,
    this.apsToken,
    this.displayName,
    this.imageUri,
    this.sex,
    this.uuid,
    this.phoneNumber,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.prefecture,
    this.password,
    this.fcmToken,
  });

  GrpcTimestamp birth;

  String annotationId;

  String introduction;

  String voipToken;

  String apsToken;

  String displayName;

  String imageUri;

  GrpcFanSex sex;

  String uuid;

  String phoneNumber;

  GrpcTimestamp createdAt;

  GrpcTimestamp updatedAt;

  String email;

  String prefecture;

  String password;

  String fcmToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcFan &&
     other.birth == birth &&
     other.annotationId == annotationId &&
     other.introduction == introduction &&
     other.voipToken == voipToken &&
     other.apsToken == apsToken &&
     other.displayName == displayName &&
     other.imageUri == imageUri &&
     other.sex == sex &&
     other.uuid == uuid &&
     other.phoneNumber == phoneNumber &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.email == email &&
     other.prefecture == prefecture &&
     other.password == password &&
     other.fcmToken == fcmToken;

  @override
  int get hashCode =>
    (birth == null ? 0 : birth.hashCode) +
    (annotationId == null ? 0 : annotationId.hashCode) +
    (introduction == null ? 0 : introduction.hashCode) +
    (voipToken == null ? 0 : voipToken.hashCode) +
    (apsToken == null ? 0 : apsToken.hashCode) +
    (displayName == null ? 0 : displayName.hashCode) +
    (imageUri == null ? 0 : imageUri.hashCode) +
    (sex == null ? 0 : sex.hashCode) +
    (uuid == null ? 0 : uuid.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (prefecture == null ? 0 : prefecture.hashCode) +
    (password == null ? 0 : password.hashCode) +
    (fcmToken == null ? 0 : fcmToken.hashCode);

  @override
  String toString() => 'GrpcFan[birth=$birth, annotationId=$annotationId, introduction=$introduction, voipToken=$voipToken, apsToken=$apsToken, displayName=$displayName, imageUri=$imageUri, sex=$sex, uuid=$uuid, phoneNumber=$phoneNumber, createdAt=$createdAt, updatedAt=$updatedAt, email=$email, prefecture=$prefecture, password=$password, fcmToken=$fcmToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (birth != null) {
      json[r'birth'] = birth;
    }
    if (annotationId != null) {
      json[r'annotation_id'] = annotationId;
    }
    if (introduction != null) {
      json[r'introduction'] = introduction;
    }
    if (voipToken != null) {
      json[r'voip_token'] = voipToken;
    }
    if (apsToken != null) {
      json[r'aps_token'] = apsToken;
    }
    if (displayName != null) {
      json[r'display_name'] = displayName;
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
    if (phoneNumber != null) {
      json[r'phone_number'] = phoneNumber;
    }
    if (createdAt != null) {
      json[r'created_at'] = createdAt;
    }
    if (updatedAt != null) {
      json[r'updated_at'] = updatedAt;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (prefecture != null) {
      json[r'prefecture'] = prefecture;
    }
    if (password != null) {
      json[r'password'] = password;
    }
    if (fcmToken != null) {
      json[r'fcm_token'] = fcmToken;
    }
    return json;
  }

  /// Returns a new [GrpcFan] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcFan fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcFan(
        birth: GrpcTimestamp.fromJson(json[r'birth']),
        annotationId: json[r'annotation_id'],
        introduction: json[r'introduction'],
        voipToken: json[r'voip_token'],
        apsToken: json[r'aps_token'],
        displayName: json[r'display_name'],
        imageUri: json[r'image_uri'],
        sex: GrpcFanSex.fromJson(json[r'sex']),
        uuid: json[r'uuid'],
        phoneNumber: json[r'phone_number'],
        createdAt: GrpcTimestamp.fromJson(json[r'created_at']),
        updatedAt: GrpcTimestamp.fromJson(json[r'updated_at']),
        email: json[r'email'],
        prefecture: json[r'prefecture'],
        password: json[r'password'],
        fcmToken: json[r'fcm_token'],
    );

  static List<GrpcFan> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcFan>[]
      : json.map((dynamic value) => GrpcFan.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcFan> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcFan>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcFan.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcFan-objects as value to a dart map
  static Map<String, List<GrpcFan>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcFan>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcFan.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

