//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ReservationServiceApi {
  ReservationServiceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'GET /v1/reservations/fans/{fan_uuid}/fan-meeting/{fan_meeting_id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] fanUuid (required):
  ///
  /// * [int] fanMeetingId (required):
  Future<Response> reservationServiceCountNumReservedFanWithHttpInfo(String fanUuid, int fanMeetingId) async {
    // Verify required params are set.
    if (fanUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fanUuid');
    }
    if (fanMeetingId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fanMeetingId');
    }

    final path = r'/v1/reservations/fans/{fan_uuid}/fan-meeting/{fan_meeting_id}'
      .replaceAll('{' + 'fan_uuid' + '}', fanUuid.toString())
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
  /// * [String] fanUuid (required):
  ///
  /// * [int] fanMeetingId (required):
  Future<GrpcCountNumReservedFanResponse> reservationServiceCountNumReservedFan(String fanUuid, int fanMeetingId) async {
    final response = await reservationServiceCountNumReservedFanWithHttpInfo(fanUuid, fanMeetingId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcCountNumReservedFanResponse',) as GrpcCountNumReservedFanResponse;
        }
    return Future<GrpcCountNumReservedFanResponse>.value(null);
  }

  /// Performs an HTTP 'POST /v1/reservations' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcCreateReservationRequest] body (required):
  Future<Response> reservationServiceCreateReservationWithHttpInfo(GrpcCreateReservationRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/reservations';

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
  /// * [GrpcCreateReservationRequest] body (required):
  Future<GrpcCreateReservationResponse> reservationServiceCreateReservation(GrpcCreateReservationRequest body) async {
    final response = await reservationServiceCreateReservationWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcCreateReservationResponse',) as GrpcCreateReservationResponse;
        }
    return Future<GrpcCreateReservationResponse>.value(null);
  }

  /// Performs an HTTP 'DELETE /v1/reservations/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> reservationServiceDeleteReservationWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/v1/reservations/{id}'
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
      'DELETE',
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
  Future<GrpcEmpty> reservationServiceDeleteReservation(int id) async {
    final response = await reservationServiceDeleteReservationWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcEmpty',) as GrpcEmpty;
        }
    return Future<GrpcEmpty>.value(null);
  }

  /// Performs an HTTP 'GET /v1/reservations/fans/{fan_uuid}/influencers/{influencer_uuid}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] fanUuid (required):
  ///
  /// * [String] influencerUuid (required):
  Future<Response> reservationServiceGetNumCallsWithHttpInfo(String fanUuid, String influencerUuid) async {
    // Verify required params are set.
    if (fanUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fanUuid');
    }
    if (influencerUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: influencerUuid');
    }

    final path = r'/v1/reservations/fans/{fan_uuid}/influencers/{influencer_uuid}'
      .replaceAll('{' + 'fan_uuid' + '}', fanUuid.toString())
      .replaceAll('{' + 'influencer_uuid' + '}', influencerUuid.toString());

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
  ///
  /// * [String] influencerUuid (required):
  Future<GrpcGetNumCallsResponse> reservationServiceGetNumCalls(String fanUuid, String influencerUuid) async {
    final response = await reservationServiceGetNumCallsWithHttpInfo(fanUuid, influencerUuid);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcGetNumCallsResponse',) as GrpcGetNumCallsResponse;
        }
    return Future<GrpcGetNumCallsResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/reservations/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> reservationServiceGetReservationWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/v1/reservations/{id}'
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
  Future<GrpcReservation> reservationServiceGetReservation(int id) async {
    final response = await reservationServiceGetReservationWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcReservation',) as GrpcReservation;
        }
    return Future<GrpcReservation>.value(null);
  }

  /// Performs an HTTP 'GET /v1/reservations/wait/fans/{fan_uuid}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] fanUuid (required):
  Future<Response> reservationServiceGetUnfinishedReservationByFanWithHttpInfo(String fanUuid) async {
    // Verify required params are set.
    if (fanUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fanUuid');
    }

    final path = r'/v1/reservations/wait/fans/{fan_uuid}'
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
  Future<GrpcGetUnfinishedReservationByFanResponse> reservationServiceGetUnfinishedReservationByFan(String fanUuid) async {
    final response = await reservationServiceGetUnfinishedReservationByFanWithHttpInfo(fanUuid);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcGetUnfinishedReservationByFanResponse',) as GrpcGetUnfinishedReservationByFanResponse;
        }
    return Future<GrpcGetUnfinishedReservationByFanResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/fan-meetings/{id}/call_history' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> reservationServiceListCallHistoryByFanMeetingIDWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/v1/fan-meetings/{id}/call_history'
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
  Future<GrpcListCallHistoryByFanMeetingIDResponse> reservationServiceListCallHistoryByFanMeetingID(int id) async {
    final response = await reservationServiceListCallHistoryByFanMeetingIDWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcListCallHistoryByFanMeetingIDResponse',) as GrpcListCallHistoryByFanMeetingIDResponse;
        }
    return Future<GrpcListCallHistoryByFanMeetingIDResponse>.value(null);
  }

  /// Performs an HTTP 'POST /v1/reservations/id/{id}/remove/fan' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] id (required):
  Future<Response> reservationServiceRemoveFanByReservationWithHttpInfo(int id) async {
    // Verify required params are set.
    if (id == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: id');
    }

    final path = r'/v1/reservations/id/{id}/remove/fan'
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
  Future<GrpcEmpty> reservationServiceRemoveFanByReservation(int id) async {
    final response = await reservationServiceRemoveFanByReservationWithHttpInfo(id);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcEmpty',) as GrpcEmpty;
        }
    return Future<GrpcEmpty>.value(null);
  }

  /// Performs an HTTP 'PUT /v1/reservations/upload/cheki' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUploadChekiRequest] body (required):
  Future<Response> reservationServiceUploadChekiWithHttpInfo(GrpcUploadChekiRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/reservations/upload/cheki';

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
  /// * [GrpcUploadChekiRequest] body (required):
  Future<GrpcEmpty> reservationServiceUploadCheki(GrpcUploadChekiRequest body) async {
    final response = await reservationServiceUploadChekiWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcEmpty',) as GrpcEmpty;
        }
    return Future<GrpcEmpty>.value(null);
  }

  /// Performs an HTTP 'PUT /v1/reservations/upload/tencent-log/im' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUploadTencentInstantMessageLogByReservationRequest] body (required):
  Future<Response> reservationServiceUploadTencentInstantMessageLogByReservationWithHttpInfo(GrpcUploadTencentInstantMessageLogByReservationRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/reservations/upload/tencent-log/im';

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
  /// * [GrpcUploadTencentInstantMessageLogByReservationRequest] body (required):
  Future<GrpcEmpty> reservationServiceUploadTencentInstantMessageLogByReservation(GrpcUploadTencentInstantMessageLogByReservationRequest body) async {
    final response = await reservationServiceUploadTencentInstantMessageLogByReservationWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcEmpty',) as GrpcEmpty;
        }
    return Future<GrpcEmpty>.value(null);
  }

  /// Performs an HTTP 'PUT /v1/reservations/upload/tencent-log/lite-av' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUploadTencentLiteAVLogByReservationRequest] body (required):
  Future<Response> reservationServiceUploadTencentLiteAVLogByReservationWithHttpInfo(GrpcUploadTencentLiteAVLogByReservationRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/reservations/upload/tencent-log/lite-av';

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
  /// * [GrpcUploadTencentLiteAVLogByReservationRequest] body (required):
  Future<GrpcEmpty> reservationServiceUploadTencentLiteAVLogByReservation(GrpcUploadTencentLiteAVLogByReservationRequest body) async {
    final response = await reservationServiceUploadTencentLiteAVLogByReservationWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcEmpty',) as GrpcEmpty;
        }
    return Future<GrpcEmpty>.value(null);
  }
}
