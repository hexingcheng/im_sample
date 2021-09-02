//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CampaignServiceApi {
  CampaignServiceApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'PUT /v1/serial_codes/{serial_code}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] serialCode (required):
  ///
  /// * [GrpcConsumeSerialCodeRequest] body (required):
  Future<Response> campaignServiceConsumeSerialCodeWithHttpInfo(String serialCode, GrpcConsumeSerialCodeRequest body) async {
    // Verify required params are set.
    if (serialCode == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: serialCode');
    }
    if (body == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: body');
    }

    final path = r'/v1/serial_codes/{serial_code}'
      .replaceAll('{' + 'serial_code' + '}', serialCode.toString());

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
  /// * [String] serialCode (required):
  ///
  /// * [GrpcConsumeSerialCodeRequest] body (required):
  Future<GrpcEmpty> campaignServiceConsumeSerialCode(String serialCode, GrpcConsumeSerialCodeRequest body) async {
    final response = await campaignServiceConsumeSerialCodeWithHttpInfo(serialCode, body);
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

  /// Performs an HTTP 'GET /v1/fans/{fan_uuid}/campaigns' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] fanUuid (required):
  Future<Response> campaignServiceListCampaignByFanWithHttpInfo(String fanUuid) async {
    // Verify required params are set.
    if (fanUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: fanUuid');
    }

    final path = r'/v1/fans/{fan_uuid}/campaigns'
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
  Future<GrpcListCampaignByFanResponse> campaignServiceListCampaignByFan(String fanUuid) async {
    final response = await campaignServiceListCampaignByFanWithHttpInfo(fanUuid);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcListCampaignByFanResponse',) as GrpcListCampaignByFanResponse;
        }
    return Future<GrpcListCampaignByFanResponse>.value(null);
  }

  /// Performs an HTTP 'GET /v1/influencers/{influencer_uuid}/campaigns' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] influencerUuid (required):
  Future<Response> campaignServiceListCampaignByInfluencerWithHttpInfo(String influencerUuid) async {
    // Verify required params are set.
    if (influencerUuid == null) {
     throw ApiException(HttpStatus.badRequest, 'Missing required param: influencerUuid');
    }

    final path = r'/v1/influencers/{influencer_uuid}/campaigns'
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
  Future<GrpcListCampaignByInfluencerResponse> campaignServiceListCampaignByInfluencer(String influencerUuid) async {
    final response = await campaignServiceListCampaignByInfluencerWithHttpInfo(influencerUuid);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body != null && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GrpcListCampaignByInfluencerResponse',) as GrpcListCampaignByInfluencerResponse;
        }
    return Future<GrpcListCampaignByInfluencerResponse>.value(null);
  }
}
