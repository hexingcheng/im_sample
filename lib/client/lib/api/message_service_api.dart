//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MessageServiceApi {
  MessageServiceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/messages/influencers/{influencer_uuid}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] influencerUuid (required):
  ///
  /// * [GrpcCreateMessageByInfluencerRequest] body (required):
  Future<Response> messageServiceCreateMessageByInfluencerWithHttpInfo(String influencerUuid, GrpcCreateMessageByInfluencerRequest body) async {
    // Verify required params are set.
    if (influencerUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: influencerUuid');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/messages/influencers/{influencer_uuid}'
      .replaceAll('{' + 'influencer_uuid' + '}', influencerUuid.toString());

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['x-api-jwt'];


    return await apiClient.invokeAPI(
      path,
      'POST',
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
  /// * [String] influencerUuid (required):
  ///
  /// * [GrpcCreateMessageByInfluencerRequest] body (required):
  Future<GrpcCreateMessageByInfluencerResponse> messageServiceCreateMessageByInfluencer(String influencerUuid, GrpcCreateMessageByInfluencerRequest body) async {
    final response = await messageServiceCreateMessageByInfluencerWithHttpInfo(influencerUuid, body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcCreateMessageByInfluencerResponse',) as GrpcCreateMessageByInfluencerResponse;
        }
    return Future<GrpcCreateMessageByInfluencerResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/fans/{fan_uuid}/joined_rooms' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] fanUuid (required):
  Future<Response> messageServiceListJoinedRoomByFanWithHttpInfo(String fanUuid) async {
    // Verify required params are set.
    if (fanUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fanUuid');
    }

    final path = r'/v1/fans/{fan_uuid}/joined_rooms'
      .replaceAll('{' + 'fan_uuid' + '}', fanUuid.toString());

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
  /// * [String] fanUuid (required):
  Future<GrpcListJoinedRoomByFanResponse> messageServiceListJoinedRoomByFan(String fanUuid) async {
    final response = await messageServiceListJoinedRoomByFanWithHttpInfo(fanUuid);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcListJoinedRoomByFanResponse',) as GrpcListJoinedRoomByFanResponse;
        }
    return Future<GrpcListJoinedRoomByFanResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/fans/{fan_uuid}/talk_rooms/{talk_room_uuid}/messages' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] fanUuid (required):
  ///
  /// * [String] talkRoomUuid (required):
  ///
  /// * [int] nextSeekDate:
  Future<Response> messageServiceListMessageByFanUUIDWithHttpInfo(String fanUuid, String talkRoomUuid, { int nextSeekDate }) async {
    // Verify required params are set.
    if (fanUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fanUuid');
    }
    if (talkRoomUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: talkRoomUuid');
    }

    final path = r'/v1/fans/{fan_uuid}/talk_rooms/{talk_room_uuid}/messages'
      .replaceAll('{' + 'fan_uuid' + '}', fanUuid.toString())
      .replaceAll('{' + 'talk_room_uuid' + '}', talkRoomUuid.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (nextSeekDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'next_seek_date', nextSeekDate));
    }

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
  /// * [String] fanUuid (required):
  ///
  /// * [String] talkRoomUuid (required):
  ///
  /// * [int] nextSeekDate:
  Future<GrpcListMessageByFanUUIDResponse> messageServiceListMessageByFanUUID(String fanUuid, String talkRoomUuid, { int nextSeekDate }) async {
    final response = await messageServiceListMessageByFanUUIDWithHttpInfo(fanUuid, talkRoomUuid,  nextSeekDate: nextSeekDate );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcListMessageByFanUUIDResponse',) as GrpcListMessageByFanUUIDResponse;
        }
    return Future<GrpcListMessageByFanUUIDResponse>.value(null);
  }
}
