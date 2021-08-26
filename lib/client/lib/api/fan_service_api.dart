//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FanServiceApi {
  FanServiceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'PUT /v1/fans/delete' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcDeleteFanRequest] body (required):
  Future<Response> fanServiceDeleteFanWithHttpInfo(GrpcDeleteFanRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fans/delete';

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
  /// * [GrpcDeleteFanRequest] body (required):
  Future<Object> fanServiceDeleteFan(GrpcDeleteFanRequest body) async {
    final response = await fanServiceDeleteFanWithHttpInfo(body);
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

  /// Performs an HTTP 'GET /v1/fans/{fan_uuid}/call_transaction' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] fanUuid (required):
  Future<Response> fanServiceGetCallTransactionWithHttpInfo(String fanUuid) async {
    // Verify required params are set.
    if (fanUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fanUuid');
    }

    final path = r'/v1/fans/{fan_uuid}/call_transaction'
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
  Future<GrpcGetCallTransactionResponse> fanServiceGetCallTransaction(String fanUuid) async {
    final response = await fanServiceGetCallTransactionWithHttpInfo(fanUuid);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcGetCallTransactionResponse',) as GrpcGetCallTransactionResponse;
        }
    return Future<GrpcGetCallTransactionResponse>.value(null);
  }

  /// Get user's id and name
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  Future<Response> fanServiceGetFanWithHttpInfo(String uuid) async {
    // Verify required params are set.
    if (uuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: uuid');
    }

    final path = r'/v1/fans/{uuid}'
      .replaceAll('{' + 'uuid' + '}', uuid.toString());

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

  /// Get user's id and name
  ///
  /// Parameters:
  ///
  /// * [String] uuid (required):
  Future<GrpcGetFanResponse> fanServiceGetFan(String uuid) async {
    final response = await fanServiceGetFanWithHttpInfo(uuid);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcGetFanResponse',) as GrpcGetFanResponse;
        }
    return Future<GrpcGetFanResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/fans/fan-meeting-id/{fan_meeting_id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] fanMeetingId (required):
  Future<Response> fanServiceListByFanMeetingIDWithHttpInfo(int fanMeetingId) async {
    // Verify required params are set.
    if (fanMeetingId == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fanMeetingId');
    }

    final path = r'/v1/fans/fan-meeting-id/{fan_meeting_id}'
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
  Future<GrpcListByFanMeetingIDResponse> fanServiceListByFanMeetingID(int fanMeetingId) async {
    final response = await fanServiceListByFanMeetingIDWithHttpInfo(fanMeetingId);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcListByFanMeetingIDResponse',) as GrpcListByFanMeetingIDResponse;
        }
    return Future<GrpcListByFanMeetingIDResponse>.value(null);
  }

  /// Performs an HTTP 'PUT /v1/fans/{fan_uuid}/call_transaction' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] fanUuid (required):
  ///
  /// * [GrpcUpdateCallTransactionRequest] body (required):
  Future<Response> fanServiceUpdateCallTransactionWithHttpInfo(String fanUuid, GrpcUpdateCallTransactionRequest body) async {
    // Verify required params are set.
    if (fanUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fanUuid');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fans/{fan_uuid}/call_transaction'
      .replaceAll('{' + 'fan_uuid' + '}', fanUuid.toString());

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
  /// * [String] fanUuid (required):
  ///
  /// * [GrpcUpdateCallTransactionRequest] body (required):
  Future<Object> fanServiceUpdateCallTransaction(String fanUuid, GrpcUpdateCallTransactionRequest body) async {
    final response = await fanServiceUpdateCallTransactionWithHttpInfo(fanUuid, body);
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

  /// Performs an HTTP 'PUT /v1/fans/display_name' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUpdateDisplayNameFanRequest] body (required):
  Future<Response> fanServiceUpdateDisplayNameFanWithHttpInfo(GrpcUpdateDisplayNameFanRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fans/display_name';

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
  /// * [GrpcUpdateDisplayNameFanRequest] body (required):
  Future<GrpcUpdateDisplayNameFanResponse> fanServiceUpdateDisplayNameFan(GrpcUpdateDisplayNameFanRequest body) async {
    final response = await fanServiceUpdateDisplayNameFanWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcUpdateDisplayNameFanResponse',) as GrpcUpdateDisplayNameFanResponse;
        }
    return Future<GrpcUpdateDisplayNameFanResponse>.value(null);
  }

  /// Performs an HTTP 'PUT /v1/fans/email' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUpdateEmailFanRequest] body (required):
  Future<Response> fanServiceUpdateEmailFanWithHttpInfo(GrpcUpdateEmailFanRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fans/email';

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
  /// * [GrpcUpdateEmailFanRequest] body (required):
  Future<GrpcUpdateEmailFanResponse> fanServiceUpdateEmailFan(GrpcUpdateEmailFanRequest body) async {
    final response = await fanServiceUpdateEmailFanWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcUpdateEmailFanResponse',) as GrpcUpdateEmailFanResponse;
        }
    return Future<GrpcUpdateEmailFanResponse>.value(null);
  }

  /// Performs an HTTP 'PUT /v1/fans' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUpdateFanRequest] body (required):
  Future<Response> fanServiceUpdateFanWithHttpInfo(GrpcUpdateFanRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fans';

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
  /// * [GrpcUpdateFanRequest] body (required):
  Future<GrpcFan> fanServiceUpdateFan(GrpcUpdateFanRequest body) async {
    final response = await fanServiceUpdateFanWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcFan',) as GrpcFan;
        }
    return Future<GrpcFan>.value(null);
  }

  /// Performs an HTTP 'PUT /v1/fans/image_uri' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUpdateImageURIFanRequest] body (required):
  Future<Response> fanServiceUpdateImageURIFanWithHttpInfo(GrpcUpdateImageURIFanRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fans/image_uri';

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
  /// * [GrpcUpdateImageURIFanRequest] body (required):
  Future<GrpcUpdateImageURIFanResponse> fanServiceUpdateImageURIFan(GrpcUpdateImageURIFanRequest body) async {
    final response = await fanServiceUpdateImageURIFanWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcUpdateImageURIFanResponse',) as GrpcUpdateImageURIFanResponse;
        }
    return Future<GrpcUpdateImageURIFanResponse>.value(null);
  }

  /// Performs an HTTP 'PUT /v1/fans/introduction' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUpdateIntroductionFanRequest] body (required):
  Future<Response> fanServiceUpdateIntroductionFanWithHttpInfo(GrpcUpdateIntroductionFanRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fans/introduction';

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
  /// * [GrpcUpdateIntroductionFanRequest] body (required):
  Future<GrpcUpdateIntroductionFanResponse> fanServiceUpdateIntroductionFan(GrpcUpdateIntroductionFanRequest body) async {
    final response = await fanServiceUpdateIntroductionFanWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcUpdateIntroductionFanResponse',) as GrpcUpdateIntroductionFanResponse;
        }
    return Future<GrpcUpdateIntroductionFanResponse>.value(null);
  }

  /// Performs an HTTP 'PUT /v1/fans/password' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUpdatePasswordFanRequest] body (required):
  Future<Response> fanServiceUpdatePasswordFanWithHttpInfo(GrpcUpdatePasswordFanRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fans/password';

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
  /// * [GrpcUpdatePasswordFanRequest] body (required):
  Future<Object> fanServiceUpdatePasswordFan(GrpcUpdatePasswordFanRequest body) async {
    final response = await fanServiceUpdatePasswordFanWithHttpInfo(body);
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

  /// Performs an HTTP 'PUT /v1/fans/voip_token' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUpdateVoipTokenFanRequest] body (required):
  Future<Response> fanServiceUpdateVoipTokenFanWithHttpInfo(GrpcUpdateVoipTokenFanRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fans/voip_token';

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
  /// * [GrpcUpdateVoipTokenFanRequest] body (required):
  Future<GrpcUpdateVoipTokenFanResponse> fanServiceUpdateVoipTokenFan(GrpcUpdateVoipTokenFanRequest body) async {
    final response = await fanServiceUpdateVoipTokenFanWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcUpdateVoipTokenFanResponse',) as GrpcUpdateVoipTokenFanResponse;
        }
    return Future<GrpcUpdateVoipTokenFanResponse>.value(null);
  }

  /// Performs an HTTP 'POST /v1/fans/upload' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUploadFanImageRequest] body (required):
  Future<Response> fanServiceUploadFanImageWithHttpInfo(GrpcUploadFanImageRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fans/upload';

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
  /// * [GrpcUploadFanImageRequest] body (required):
  Future<GrpcUploadFanImageResponse> fanServiceUploadFanImage(GrpcUploadFanImageRequest body) async {
    final response = await fanServiceUploadFanImageWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcUploadFanImageResponse',) as GrpcUploadFanImageResponse;
        }
    return Future<GrpcUploadFanImageResponse>.value(null);
  }
}
