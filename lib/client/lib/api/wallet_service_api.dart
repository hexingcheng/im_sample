//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class WalletServiceApi {
  WalletServiceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/verification/refill' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcAppleIapVerificationRequest] body (required):
  Future<Response> walletServiceAppleIapVerificationWithHttpInfo(GrpcAppleIapVerificationRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/verification/refill';

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
  /// * [GrpcAppleIapVerificationRequest] body (required):
  Future<GrpcWallet> walletServiceAppleIapVerification(GrpcAppleIapVerificationRequest body) async {
    final response = await walletServiceAppleIapVerificationWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcWallet',) as GrpcWallet;
        }
    return Future<GrpcWallet>.value(null);
  }

  /// Performs an HTTP 'PUT /v1/wallet/consume' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcConsumeBalanceRequest] body (required):
  Future<Response> walletServiceConsumeBalanceWithHttpInfo(GrpcConsumeBalanceRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/wallet/consume';

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
  /// * [GrpcConsumeBalanceRequest] body (required):
  Future<GrpcConsumeBalanceResponse> walletServiceConsumeBalance(GrpcConsumeBalanceRequest body) async {
    final response = await walletServiceConsumeBalanceWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcConsumeBalanceResponse',) as GrpcConsumeBalanceResponse;
        }
    return Future<GrpcConsumeBalanceResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/wallet/fans/{fan_uuid}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] fanUuid (required):
  Future<Response> walletServiceGetBalanceByFanUUIDWithHttpInfo(String fanUuid) async {
    // Verify required params are set.
    if (fanUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fanUuid');
    }

    final path = r'/v1/wallet/fans/{fan_uuid}'
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
  Future<GrpcWallet> walletServiceGetBalanceByFanUUID(String fanUuid) async {
    final response = await walletServiceGetBalanceByFanUUIDWithHttpInfo(fanUuid);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcWallet',) as GrpcWallet;
        }
    return Future<GrpcWallet>.value(null);
  }

  /// Performs an HTTP 'GET /v1/billing/fans/{fan_uuid}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] fanUuid (required):
  Future<Response> walletServiceGetBillingByMonthWithHttpInfo(String fanUuid) async {
    // Verify required params are set.
    if (fanUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fanUuid');
    }

    final path = r'/v1/billing/fans/{fan_uuid}'
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
  Future<GrpcGetBillingByMonthRes> walletServiceGetBillingByMonth(String fanUuid) async {
    final response = await walletServiceGetBillingByMonthWithHttpInfo(fanUuid);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcGetBillingByMonthRes',) as GrpcGetBillingByMonthRes;
        }
    return Future<GrpcGetBillingByMonthRes>.value(null);
  }
}
