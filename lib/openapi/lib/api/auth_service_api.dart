//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthServiceApi {
  AuthServiceApi([ApiClient apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/fans/refresh/token' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcFanRefreshTokenRequest] body (required):
  Future<Response> authServiceFanRefreshTokenWithHttpInfo(
      GrpcFanRefreshTokenRequest body) async {
    // Verify required params are set.
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fans/refresh/token';

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
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
  /// * [GrpcFanRefreshTokenRequest] body (required):
  Future<GrpcFanRefreshTokenResponse> authServiceFanRefreshToken(
      GrpcFanRefreshTokenRequest body) async {
    final response = await authServiceFanRefreshTokenWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'GrpcFanRefreshTokenResponse',
      ) as GrpcFanRefreshTokenResponse;
    }
    return Future<GrpcFanRefreshTokenResponse>.value(null);
  }

  /// Performs an HTTP 'POST /v1/fans/signin' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcFanSignInRequest] body (required):
  Future<Response> authServiceFanSignInWithHttpInfo(
      GrpcFanSignInRequest body) async {
    // Verify required params are set.
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fans/signin';

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
    final authNames = <String>['x-platform'];

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
  /// * [GrpcFanSignInRequest] body (required):
  Future<GrpcFanSignInResponse> authServiceFanSignIn(
      GrpcFanSignInRequest body) async {
    final response = await authServiceFanSignInWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'GrpcFanSignInResponse',
      ) as GrpcFanSignInResponse;
    }
    return Future<GrpcFanSignInResponse>.value(null);
  }

  /// Performs an HTTP 'POST /v1/fans/signup' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcFanSignUpRequest] body (required):
  Future<Response> authServiceFanSignUpWithHttpInfo(
      GrpcFanSignUpRequest body) async {
    // Verify required params are set.
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/fans/signup';

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
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
  /// * [GrpcFanSignUpRequest] body (required):
  Future<GrpcFanSignUpResponse> authServiceFanSignUp(
      GrpcFanSignUpRequest body) async {
    final response = await authServiceFanSignUpWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'GrpcFanSignUpResponse',
      ) as GrpcFanSignUpResponse;
    }
    return Future<GrpcFanSignUpResponse>.value(null);
  }

  /// Performs an HTTP 'POST /v1/influencers/refresh/token' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcInfluencerRefreshTokenRequest] body (required):
  Future<Response> authServiceInfluencerRefreshTokenWithHttpInfo(
      GrpcInfluencerRefreshTokenRequest body) async {
    // Verify required params are set.
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/influencers/refresh/token';

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
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
  /// * [GrpcInfluencerRefreshTokenRequest] body (required):
  Future<GrpcInfluencerRefreshTokenResponse> authServiceInfluencerRefreshToken(
      GrpcInfluencerRefreshTokenRequest body) async {
    final response = await authServiceInfluencerRefreshTokenWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'GrpcInfluencerRefreshTokenResponse',
      ) as GrpcInfluencerRefreshTokenResponse;
    }
    return Future<GrpcInfluencerRefreshTokenResponse>.value(null);
  }

  /// Performs an HTTP 'POST /v1/influencers/signin' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcInfluencerSignInRequest] body (required):
  Future<Response> authServiceInfluencerSignInWithHttpInfo(
      GrpcInfluencerSignInRequest body) async {
    // Verify required params are set.
    if (body == null) {
      throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/influencers/signin';

    Object postBody = body;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    final contentTypes = <String>['application/json'];
    final nullableContentType =
        contentTypes.isNotEmpty ? contentTypes[0] : null;
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
  /// * [GrpcInfluencerSignInRequest] body (required):
  Future<GrpcInfluencerSignInResponse> authServiceInfluencerSignIn(
      GrpcInfluencerSignInRequest body) async {
    final response = await authServiceInfluencerSignInWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'GrpcInfluencerSignInResponse',
      ) as GrpcInfluencerSignInResponse;
    }
    return Future<GrpcInfluencerSignInResponse>.value(null);
  }
}
