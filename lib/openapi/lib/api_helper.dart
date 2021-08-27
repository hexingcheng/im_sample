//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QueryParam {
  const QueryParam(this.name, this.value);

  final String name;
  final String value;

  @override
  String toString() => '${Uri.encodeQueryComponent(name)}=${Uri.encodeQueryComponent(value)}';
}

// Ported from the Java version.
Iterable<QueryParam> _convertParametersForCollectionFormat(
  String collectionFormat,
  String name,
  dynamic value,
) {
  final params = <QueryParam>[];

  // preconditions
  if (name != null && name.isNotEmpty && value != null) {
    if (value is List) {
      // get the collection format, default: csv
      collectionFormat = (collectionFormat == null || collectionFormat.isEmpty)
        ? 'csv'
        : collectionFormat;

      if (collectionFormat == 'multi') {
        return value.map((v) => QueryParam(name, parameterToString(v)));
      }

      final delimiter = _delimiters[collectionFormat] ?? ',';

      params.add(QueryParam(name, value.map((v) => parameterToString(v)).join(delimiter)));
    } else {
      params.add(QueryParam(name, parameterToString(value)));
    }
  }

  return params;
}

/// Format the given parameter object into a [String].
String parameterToString(dynamic value) {
  if (value == null) {
    return '';
  }
  if (value is DateTime) {
    return value.toUtc().toIso8601String();
  }
  if (value is CallToFanRequestAction) {
    return CallToFanRequestActionTypeTransformer().encode(value).toString();
  }
  if (value is CampaignCampaignCodeState) {
    return CampaignCampaignCodeStateTypeTransformer().encode(value).toString();
  }
  if (value is FanNotificationRequestSegment) {
    return FanNotificationRequestSegmentTypeTransformer().encode(value).toString();
  }
  if (value is GrpcAddPointsRequestNumExtension) {
    return GrpcAddPointsRequestNumExtensionTypeTransformer().encode(value).toString();
  }
  if (value is GrpcFanMeetingState) {
    return GrpcFanMeetingStateTypeTransformer().encode(value).toString();
  }
  if (value is GrpcFanSex) {
    return GrpcFanSexTypeTransformer().encode(value).toString();
  }
  if (value is GrpcFanmeetingStyle) {
    return GrpcFanmeetingStyleTypeTransformer().encode(value).toString();
  }
  if (value is GrpcGenre) {
    return GrpcGenreTypeTransformer().encode(value).toString();
  }
  if (value is GrpcHealthStatus) {
    return GrpcHealthStatusTypeTransformer().encode(value).toString();
  }
  if (value is GrpcIncentiveCode) {
    return GrpcIncentiveCodeTypeTransformer().encode(value).toString();
  }
  if (value is GrpcInfluencerSex) {
    return GrpcInfluencerSexTypeTransformer().encode(value).toString();
  }
  if (value is GrpcInfluencerSignUpRequestSex) {
    return GrpcInfluencerSignUpRequestSexTypeTransformer().encode(value).toString();
  }
  if (value is GrpcIsExtension) {
    return GrpcIsExtensionTypeTransformer().encode(value).toString();
  }
  if (value is GrpcMessageType) {
    return GrpcMessageTypeTypeTransformer().encode(value).toString();
  }
  if (value is GrpcNumExtension) {
    return GrpcNumExtensionTypeTransformer().encode(value).toString();
  }
  if (value is GrpcOption) {
    return GrpcOptionTypeTransformer().encode(value).toString();
  }
  if (value is GrpcReasonCancelMembership) {
    return GrpcReasonCancelMembershipTypeTransformer().encode(value).toString();
  }
  if (value is GrpcReportType) {
    return GrpcReportTypeTypeTransformer().encode(value).toString();
  }
  if (value is GrpcReservationState) {
    return GrpcReservationStateTypeTransformer().encode(value).toString();
  }
  if (value is GrpcTopic) {
    return GrpcTopicTypeTransformer().encode(value).toString();
  }
  if (value is GrpcUserType) {
    return GrpcUserTypeTypeTransformer().encode(value).toString();
  }
  return value.toString();
}

/// Returns the decoded body as UTF-8 if the given headers indicate an 'application/json'
/// content type. Otherwise, returns the decoded body as decoded by dart:http package.
Future<String> _decodeBodyBytes(Response response) async {
  final contentType = response.headers['content-type'];
  return contentType != null && contentType.toLowerCase().startsWith('application/json')
    ? response.bodyBytes == null ? null : utf8.decode(response.bodyBytes)
    : response.body;
}
