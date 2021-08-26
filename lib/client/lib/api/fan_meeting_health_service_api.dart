//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FanMeetingHealthServiceApi {
  FanMeetingHealthServiceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /v1/fan-meetings/health/{fan_meeting_id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] fanMeetingId (required):
  Future<Response> fanMeetingHealthServiceFanMeetingHealthWithHttpInfo(int fanMeetingId) async {
    // Verify required params are set.
    if (fanMeetingId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fanMeetingId');
    }

    final path = r'/v1/fan-meetings/health/{fan_meeting_id}'
      .replaceAll('{' + 'fan_meeting_id' + '}', fanMeetingId.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['x-api-jwt'];


    return await apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      nullableContentType,
      authNames,
    );
  }

  /// Parameters:
  ///
  /// * [int] fanMeetingId (required):
  Future<Object> fanMeetingHealthServiceFanMeetingHealth(int fanMeetingId) async {
    final response = await fanMeetingHealthServiceFanMeetingHealthWithHttpInfo(fanMeetingId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
        }
    return Future<Object>.value(null);
  }
}
