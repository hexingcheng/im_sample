//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FanMeetingServiceApi {
  FanMeetingServiceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/fan-meetings' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcCreateFanMeetingRequest] body (required):
  Future<Response> fanMeetingServiceCreateFanMeetingWithHttpInfo(GrpcCreateFanMeetingRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fan-meetings';

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
  /// * [GrpcCreateFanMeetingRequest] body (required):
  Future<GrpcCreateFanMeetingResponse> fanMeetingServiceCreateFanMeeting(GrpcCreateFanMeetingRequest body) async {
    final response = await fanMeetingServiceCreateFanMeetingWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcCreateFanMeetingResponse',) as GrpcCreateFanMeetingResponse;
        }
    return Future<GrpcCreateFanMeetingResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/fan-meetings/id/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  ///
  /// * [String] fanUuid:
  Future<Response> fanMeetingServiceGetFanMeetingWithHttpInfo(int id, { String fanUuid }) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/v1/fan-meetings/id/{id}'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (fanUuid != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'fan_uuid', fanUuid));
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
  /// * [int] id (required):
  ///
  /// * [String] fanUuid:
  Future<GrpcGetFanMeetingResponse> fanMeetingServiceGetFanMeeting(int id, { String fanUuid }) async {
    final response = await fanMeetingServiceGetFanMeetingWithHttpInfo(id,  fanUuid: fanUuid );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcGetFanMeetingResponse',) as GrpcGetFanMeetingResponse;
        }
    return Future<GrpcGetFanMeetingResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/fan-meetings/id/{id}/nozoki' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> fanMeetingServiceGetTotalNozokiNumByFanMeetingWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/v1/fan-meetings/id/{id}/nozoki'
      .replaceAll('{' + 'id' + '}', id.toString());

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
  /// * [int] id (required):
  Future<GrpcGetTotalNozokiNumByFanMeetingResponse> fanMeetingServiceGetTotalNozokiNumByFanMeeting(int id) async {
    final response = await fanMeetingServiceGetTotalNozokiNumByFanMeetingWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcGetTotalNozokiNumByFanMeetingResponse',) as GrpcGetTotalNozokiNumByFanMeetingResponse;
        }
    return Future<GrpcGetTotalNozokiNumByFanMeetingResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/fan-meetings' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] pageToken:
  ///
  /// * [String] state:
  ///
  /// * [String] fanUuid:
  Future<Response> fanMeetingServiceListFanMeetingsWithHttpInfo({ String pageToken, String state, String fanUuid }) async {
    // Verify required params are set.

    final path = r'/v1/fan-meetings';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pageToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page_token', pageToken));
    }
    if (state != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'state', state));
    }
    if (fanUuid != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'fan_uuid', fanUuid));
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
  /// * [String] pageToken:
  ///
  /// * [String] state:
  ///
  /// * [String] fanUuid:
  Future<GrpcListFanMeetingsResponse> fanMeetingServiceListFanMeetings({ String pageToken, String state, String fanUuid }) async {
    final response = await fanMeetingServiceListFanMeetingsWithHttpInfo( pageToken: pageToken, state: state, fanUuid: fanUuid );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcListFanMeetingsResponse',) as GrpcListFanMeetingsResponse;
        }
    return Future<GrpcListFanMeetingsResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/fan-meetings/genre/{genre}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] genre (required):
  ///
  /// * [String] pageToken:
  ///
  /// * [String] fanUuid:
  Future<Response> fanMeetingServiceListFanMeetingsByGenreWithHttpInfo(String genre, { String pageToken, String fanUuid }) async {
    // Verify required params are set.
    if (genre == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: genre');
    }

    final path = r'/v1/fan-meetings/genre/{genre}'
      .replaceAll('{' + 'genre' + '}', genre.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pageToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page_token', pageToken));
    }
    if (fanUuid != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'fan_uuid', fanUuid));
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
  /// * [String] genre (required):
  ///
  /// * [String] pageToken:
  ///
  /// * [String] fanUuid:
  Future<GrpcListFanMeetingsByGenreResponse> fanMeetingServiceListFanMeetingsByGenre(String genre, { String pageToken, String fanUuid }) async {
    final response = await fanMeetingServiceListFanMeetingsByGenreWithHttpInfo(genre,  pageToken: pageToken, fanUuid: fanUuid );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcListFanMeetingsByGenreResponse',) as GrpcListFanMeetingsByGenreResponse;
        }
    return Future<GrpcListFanMeetingsByGenreResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/fan-meetings/influencers/{influencer_uuid}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] influencerUuid (required):
  ///
  /// * [String] fanUuid:
  ///
  /// * [String] state:
  Future<Response> fanMeetingServiceListFanMeetingsByInfluencerUUIDWithHttpInfo(String influencerUuid, { String fanUuid, String state }) async {
    // Verify required params are set.
    if (influencerUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: influencerUuid');
    }

    final path = r'/v1/fan-meetings/influencers/{influencer_uuid}'
      .replaceAll('{' + 'influencer_uuid' + '}', influencerUuid.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (fanUuid != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'fan_uuid', fanUuid));
    }
    if (state != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'state', state));
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
  /// * [String] influencerUuid (required):
  ///
  /// * [String] fanUuid:
  ///
  /// * [String] state:
  Future<GrpcListFanMeetingsByInfluencerUUIDResponse> fanMeetingServiceListFanMeetingsByInfluencerUUID(String influencerUuid, { String fanUuid, String state }) async {
    final response = await fanMeetingServiceListFanMeetingsByInfluencerUUIDWithHttpInfo(influencerUuid,  fanUuid: fanUuid, state: state );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcListFanMeetingsByInfluencerUUIDResponse',) as GrpcListFanMeetingsByInfluencerUUIDResponse;
        }
    return Future<GrpcListFanMeetingsByInfluencerUUIDResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/fan-meetings/topic/{topic}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] topic (required):
  ///
  /// * [String] pageToken:
  ///
  /// * [String] fanUuid:
  Future<Response> fanMeetingServiceListFanMeetingsByTopicWithHttpInfo(String topic, { String pageToken, String fanUuid }) async {
    // Verify required params are set.
    if (topic == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: topic');
    }

    final path = r'/v1/fan-meetings/topic/{topic}'
      .replaceAll('{' + 'topic' + '}', topic.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pageToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page_token', pageToken));
    }
    if (fanUuid != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'fan_uuid', fanUuid));
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
  /// * [String] topic (required):
  ///
  /// * [String] pageToken:
  ///
  /// * [String] fanUuid:
  Future<GrpcListFanMeetingsByTopicResponse> fanMeetingServiceListFanMeetingsByTopic(String topic, { String pageToken, String fanUuid }) async {
    final response = await fanMeetingServiceListFanMeetingsByTopicWithHttpInfo(topic,  pageToken: pageToken, fanUuid: fanUuid );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcListFanMeetingsByTopicResponse',) as GrpcListFanMeetingsByTopicResponse;
        }
    return Future<GrpcListFanMeetingsByTopicResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/fan-meetings/reserved/influencers/{influencer_uuid}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] influencerUuid (required):
  ///
  /// * [int] nextSeekDate:
  Future<Response> fanMeetingServiceListFanMeetingsWithReservationOnlyByInfluencerUUIDWithHttpInfo(String influencerUuid, { int nextSeekDate }) async {
    // Verify required params are set.
    if (influencerUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: influencerUuid');
    }

    final path = r'/v1/fan-meetings/reserved/influencers/{influencer_uuid}'
      .replaceAll('{' + 'influencer_uuid' + '}', influencerUuid.toString());

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
  /// * [String] influencerUuid (required):
  ///
  /// * [int] nextSeekDate:
  Future<GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse> fanMeetingServiceListFanMeetingsWithReservationOnlyByInfluencerUUID(String influencerUuid, { int nextSeekDate }) async {
    final response = await fanMeetingServiceListFanMeetingsWithReservationOnlyByInfluencerUUIDWithHttpInfo(influencerUuid,  nextSeekDate: nextSeekDate );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse',) as GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse;
        }
    return Future<GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse>.value(null);
  }

  /// Performs an HTTP 'POST /v1/fan-meetings/id/{id}/remove/fan' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> fanMeetingServiceRemoveFanByFanMeetingWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/v1/fan-meetings/id/{id}/remove/fan'
      .replaceAll('{' + 'id' + '}', id.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>[];
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
  /// * [int] id (required):
  Future<Object> fanMeetingServiceRemoveFanByFanMeeting(int id) async {
    final response = await fanMeetingServiceRemoveFanByFanMeetingWithHttpInfo(id);
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

  /// Performs an HTTP 'PUT /v1/fan-meetings' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUpdateFanMeetingRequest] body (required):
  Future<Response> fanMeetingServiceUpdateFanMeetingWithHttpInfo(GrpcUpdateFanMeetingRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fan-meetings';

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['x-api-jwt'];


    return await apiClient.invokeAPI(
      path,
      'PUT',
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
  /// * [GrpcUpdateFanMeetingRequest] body (required):
  Future<Object> fanMeetingServiceUpdateFanMeeting(GrpcUpdateFanMeetingRequest body) async {
    final response = await fanMeetingServiceUpdateFanMeetingWithHttpInfo(body);
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

  /// Performs an HTTP 'PUT /v1/fan-meetings/upload/tencent-log/im' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUploadTencentInstantMessageLogByFanMeetingRequest] body (required):
  Future<Response> fanMeetingServiceUploadTencentInstantMessageLogByFanMeetingWithHttpInfo(GrpcUploadTencentInstantMessageLogByFanMeetingRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fan-meetings/upload/tencent-log/im';

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['x-api-jwt'];


    return await apiClient.invokeAPI(
      path,
      'PUT',
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
  /// * [GrpcUploadTencentInstantMessageLogByFanMeetingRequest] body (required):
  Future<Object> fanMeetingServiceUploadTencentInstantMessageLogByFanMeeting(GrpcUploadTencentInstantMessageLogByFanMeetingRequest body) async {
    final response = await fanMeetingServiceUploadTencentInstantMessageLogByFanMeetingWithHttpInfo(body);
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

  /// Performs an HTTP 'PUT /v1/fan-meetings/upload/tencent-log/lite-av' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUploadTencentLiteAVLogByFanMeetingRequest] body (required):
  Future<Response> fanMeetingServiceUploadTencentLiteAVLogByFanMeetingWithHttpInfo(GrpcUploadTencentLiteAVLogByFanMeetingRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fan-meetings/upload/tencent-log/lite-av';

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType = contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['x-api-jwt'];


    return await apiClient.invokeAPI(
      path,
      'PUT',
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
  /// * [GrpcUploadTencentLiteAVLogByFanMeetingRequest] body (required):
  Future<Object> fanMeetingServiceUploadTencentLiteAVLogByFanMeeting(GrpcUploadTencentLiteAVLogByFanMeetingRequest body) async {
    final response = await fanMeetingServiceUploadTencentLiteAVLogByFanMeetingWithHttpInfo(body);
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
