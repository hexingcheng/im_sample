//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FollowServiceApi {
  FollowServiceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/follows' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcCreateFollowRequest] body (required):
  Future<Response> followServiceCreateFollowWithHttpInfo(GrpcCreateFollowRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/follows';

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
  /// * [GrpcCreateFollowRequest] body (required):
  Future<GrpcEmpty> followServiceCreateFollow(GrpcCreateFollowRequest body) async {
    final response = await followServiceCreateFollowWithHttpInfo(body);
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

  /// Performs an HTTP 'DELETE /v1/follows/fan/{fan_uuid}/influencer/{influencer_uuid}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] fanUuid (required):
  ///
  /// * [String] influencerUuid (required):
  Future<Response> followServiceDeleteFollowWithHttpInfo(String fanUuid, String influencerUuid) async {
    // Verify required params are set.
    if (fanUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fanUuid');
    }
    if (influencerUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: influencerUuid');
    }

    final path = r'/v1/follows/fan/{fan_uuid}/influencer/{influencer_uuid}'
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
  /// * [String] fanUuid (required):
  ///
  /// * [String] influencerUuid (required):
  Future<GrpcEmpty> followServiceDeleteFollow(String fanUuid, String influencerUuid) async {
    final response = await followServiceDeleteFollowWithHttpInfo(fanUuid, influencerUuid);
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

  /// Performs an HTTP 'GET /v1/follows/influencer/{influencer_uuid}/follower_num' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] influencerUuid (required):
  Future<Response> followServiceGetFollowerNumByInfluencerUUIDWithHttpInfo(String influencerUuid) async {
    // Verify required params are set.
    if (influencerUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: influencerUuid');
    }

    final path = r'/v1/follows/influencer/{influencer_uuid}/follower_num'
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
  /// * [String] influencerUuid (required):
  Future<GrpcGetFollowerNumByInfluencerUUIDResponse> followServiceGetFollowerNumByInfluencerUUID(String influencerUuid) async {
    final response = await followServiceGetFollowerNumByInfluencerUUIDWithHttpInfo(influencerUuid);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcGetFollowerNumByInfluencerUUIDResponse',) as GrpcGetFollowerNumByInfluencerUUIDResponse;
        }
    return Future<GrpcGetFollowerNumByInfluencerUUIDResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/follows' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] pageSize:
  ///
  /// * [String] pageToken:
  ///
  /// * [String] fanUuid:
  Future<Response> followServiceListFollowsByFanUUIDWithHttpInfo({ int pageSize, String pageToken, String fanUuid }) async {
    // Verify required params are set.

    final path = r'/v1/follows';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'page_size', pageSize));
    }
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
  /// * [int] pageSize:
  ///
  /// * [String] pageToken:
  ///
  /// * [String] fanUuid:
  Future<GrpcListFollowsByFanUUIDResponse> followServiceListFollowsByFanUUID({ int pageSize, String pageToken, String fanUuid }) async {
    final response = await followServiceListFollowsByFanUUIDWithHttpInfo( pageSize: pageSize, pageToken: pageToken, fanUuid: fanUuid );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcListFollowsByFanUUIDResponse',) as GrpcListFollowsByFanUUIDResponse;
        }
    return Future<GrpcListFollowsByFanUUIDResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/unfollows' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] pageToken:
  ///
  /// * [String] fanUuid:
  Future<Response> followServiceListUnFollowsByFanUUIDWithHttpInfo({ String pageToken, String fanUuid }) async {
    // Verify required params are set.

    final path = r'/v1/unfollows';

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
  /// * [String] pageToken:
  ///
  /// * [String] fanUuid:
  Future<GrpcListUnFollowsByFanUUIDResponse> followServiceListUnFollowsByFanUUID({ String pageToken, String fanUuid }) async {
    final response = await followServiceListUnFollowsByFanUUIDWithHttpInfo( pageToken: pageToken, fanUuid: fanUuid );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcListUnFollowsByFanUUIDResponse',) as GrpcListUnFollowsByFanUUIDResponse;
        }
    return Future<GrpcListUnFollowsByFanUUIDResponse>.value(null);
  }
}
