//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PointServiceApi {
  PointServiceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/points' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [GrpcAddPointsRequest] body (required):
  Future<Response> pointServiceAddPointsWithHttpInfo(GrpcAddPointsRequest body) async {
    // Verify required params are set.
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/points';

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
  /// * [GrpcAddPointsRequest] body (required):
  Future<GrpcAddPointsResponse> pointServiceAddPoints(GrpcAddPointsRequest body) async {
    final response = await pointServiceAddPointsWithHttpInfo(body);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcAddPointsResponse',) as GrpcAddPointsResponse;
        }
    return Future<GrpcAddPointsResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/ranking' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [bool] isEmpty:
  Future<Response> pointServiceGetRankingWithHttpInfo({ bool isEmpty }) async {
    // Verify required params are set.

    final path = r'/v1/ranking';

    Object postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (isEmpty != null) {
      queryParams.addAll(_convertParametersForCollectionFormat('', 'is_empty', isEmpty));
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
  /// * [bool] isEmpty:
  Future<GrpcGetRankingResponse> pointServiceGetRanking({ bool isEmpty }) async {
    final response = await pointServiceGetRankingWithHttpInfo( isEmpty: isEmpty );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcGetRankingResponse',) as GrpcGetRankingResponse;
        }
    return Future<GrpcGetRankingResponse>.value(null);
  }
}
