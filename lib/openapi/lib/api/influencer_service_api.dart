//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class InfluencerServiceApi {
  InfluencerServiceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/influencers/call' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcCallToFanRequest] body (required):
  Future<Response> influencerServiceCallToFanWithHttpInfo(GrpcCallToFanRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/influencers/call';

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
  /// * [GrpcCallToFanRequest] body (required):
  Future<Object> influencerServiceCallToFan(GrpcCallToFanRequest body) async {
    final response = await influencerServiceCallToFanWithHttpInfo(body);
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

  /// Performs an HTTP 'DELETE /v1/influencers/{uuid}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] uuid (required):
  Future<Response> influencerServiceDeleteInfluencerWithHttpInfo(String uuid) async {
    // Verify required params are set.
    if (uuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: uuid');
    }

    final path = r'/v1/influencers/{uuid}'
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
  /// * [String] uuid (required):
  Future<Object> influencerServiceDeleteInfluencer(String uuid) async {
    final response = await influencerServiceDeleteInfluencerWithHttpInfo(uuid);
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

  /// Performs an HTTP 'DELETE /v1/influencers/{influencer_uuid}/image' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] influencerUuid (required):
  ///
  /// * [String] imageUri:
  Future<Response> influencerServiceDeleteInfluencerImageWithHttpInfo(String influencerUuid, { String imageUri }) async {
    // Verify required params are set.
    if (influencerUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: influencerUuid');
    }

    final path = r'/v1/influencers/{influencer_uuid}/image'
      .replaceAll('{' + 'influencer_uuid' + '}', influencerUuid.toString());

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (imageUri != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'image_uri', imageUri));
    }

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
  /// * [String] influencerUuid (required):
  ///
  /// * [String] imageUri:
  Future<Object> influencerServiceDeleteInfluencerImage(String influencerUuid, { String imageUri }) async {
    final response = await influencerServiceDeleteInfluencerImageWithHttpInfo(influencerUuid,  imageUri: imageUri );
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

  /// Performs an HTTP 'GET /v1/influencers/uuid/{uuid}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] uuid (required):
  ///
  /// * [String] fanUuid:
  Future<Response> influencerServiceGetInfluencerWithHttpInfo(String uuid, { String fanUuid }) async {
    // Verify required params are set.
    if (uuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: uuid');
    }

    final path = r'/v1/influencers/uuid/{uuid}'
      .replaceAll('{' + 'uuid' + '}', uuid.toString());

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
  /// * [String] uuid (required):
  ///
  /// * [String] fanUuid:
  Future<GrpcGetInfluencerResponse> influencerServiceGetInfluencer(String uuid, { String fanUuid }) async {
    final response = await influencerServiceGetInfluencerWithHttpInfo(uuid,  fanUuid: fanUuid );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcGetInfluencerResponse',) as GrpcGetInfluencerResponse;
        }
    return Future<GrpcGetInfluencerResponse>.value(null);
  }

  /// Performs an HTTP 'PUT /v1/influencers' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUpdateInfluencerRequest] body (required):
  Future<Response> influencerServiceUpdateInfluencerWithHttpInfo(GrpcUpdateInfluencerRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/influencers';

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
  /// * [GrpcUpdateInfluencerRequest] body (required):
  Future<GrpcInfluencer> influencerServiceUpdateInfluencer(GrpcUpdateInfluencerRequest body) async {
    final response = await influencerServiceUpdateInfluencerWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcInfluencer',) as GrpcInfluencer;
        }
    return Future<GrpcInfluencer>.value(null);
  }

  /// Performs an HTTP 'PUT /v1/influencers/links' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUpdateInfluencerRequest] body (required):
  Future<Response> influencerServiceUpdateInfluencerLinksWithHttpInfo(GrpcUpdateInfluencerRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/influencers/links';

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
  /// * [GrpcUpdateInfluencerRequest] body (required):
  Future<GrpcInfluencer> influencerServiceUpdateInfluencerLinks(GrpcUpdateInfluencerRequest body) async {
    final response = await influencerServiceUpdateInfluencerLinksWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcInfluencer',) as GrpcInfluencer;
        }
    return Future<GrpcInfluencer>.value(null);
  }

  /// Performs an HTTP 'PUT /v1/influencers/upload/image' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcUploadInfluencerImageRequest] body (required):
  Future<Response> influencerServiceUploadInfluencerImageWithHttpInfo(GrpcUploadInfluencerImageRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/influencers/upload/image';

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
  /// * [GrpcUploadInfluencerImageRequest] body (required):
  Future<GrpcUploadInfluencerImageResponse> influencerServiceUploadInfluencerImage(GrpcUploadInfluencerImageRequest body) async {
    final response = await influencerServiceUploadInfluencerImageWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcUploadInfluencerImageResponse',) as GrpcUploadInfluencerImageResponse;
        }
    return Future<GrpcUploadInfluencerImageResponse>.value(null);
  }
}
