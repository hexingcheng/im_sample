//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GrpcInfluencerCredential {
  /// Returns a new [GrpcInfluencerCredential] instance.
  GrpcInfluencerCredential({
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.email,
    this.address,
  });

  String firstName;

  String lastName;

  String phoneNumber;

  String email;

  String address;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GrpcInfluencerCredential &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.phoneNumber == phoneNumber &&
     other.email == email &&
     other.address == address;

  @override
  int get hashCode =>
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (phoneNumber == null ? 0 : phoneNumber.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (address == null ? 0 : address.hashCode);

  @override
  String toString() => 'GrpcInfluencerCredential[firstName=$firstName, lastName=$lastName, phoneNumber=$phoneNumber, email=$email, address=$address]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (firstName != null) {
      json[r'first_name'] = firstName;
    }
    if (lastName != null) {
      json[r'last_name'] = lastName;
    }
    if (phoneNumber != null) {
      json[r'phone_number'] = phoneNumber;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (address != null) {
      json[r'address'] = address;
    }
    return json;
  }

  /// Returns a new [GrpcInfluencerCredential] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static GrpcInfluencerCredential fromJson(Map<String, dynamic> json) => json == null
    ? null
    : GrpcInfluencerCredential(
        firstName: json[r'first_name'],
        lastName: json[r'last_name'],
        phoneNumber: json[r'phone_number'],
        email: json[r'email'],
        address: json[r'address'],
    );

  static List<GrpcInfluencerCredential> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <GrpcInfluencerCredential>[]
      : json.map((dynamic value) => GrpcInfluencerCredential.fromJson(value)).toList(growable: true == growable);

  static Map<String, GrpcInfluencerCredential> mapFromJson(Map<String, dynamic> json) {
    final map = <String, GrpcInfluencerCredential>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = GrpcInfluencerCredential.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of GrpcInfluencerCredential-objects as value to a dart map
  static Map<String, List<GrpcInfluencerCredential>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<GrpcInfluencerCredential>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = GrpcInfluencerCredential.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

