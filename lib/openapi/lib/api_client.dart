//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://dev-api.only-live.com'}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications[r'x-api-jwt'] = ApiKeyAuth('header', 'x-api-jwt');
    _authentications[r'x-platform'] = HttpBasicAuth();
  }

  final String basePath;

  var _client = Client();

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  ///
  /// If the [newClient] is null, an [ArgumentError] is thrown.
  set client(Client newClient) {
    if (newClient == null) {
      throw ArgumentError('New client instance cannot be null.');
    }
    _client = newClient;
  }

  final _defaultHeaderMap = <String, String>{};
  final _authentications = <String, Authentication>{};

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  Map<String,String> get defaultHeaderMap => _defaultHeaderMap;

  /// Returns an unmodifiable [Map] of the authentications, since none should be added
  /// or deleted.
  Map<String, Authentication> get authentications => Map.unmodifiable(_authentications);

  T getAuthentication<T extends Authentication>(String name) {
    final authentication = _authentications[name];
    return authentication is T ? authentication : null;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String nullableContentType,
    List<String> authNames,
  ) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);

    final urlEncodedQueryParams = queryParams
      .where((param) => param.value != null)
      .map((param) => '$param');

    final queryString = urlEncodedQueryParams.isNotEmpty
      ? '?${urlEncodedQueryParams.join('&')}'
      : '';

    final Uri uri = Uri.parse('$basePath$path$queryString');

    if (nullableContentType != null) {
      headerParams['Content-Type'] = nullableContentType;
    }

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (nullableContentType == null ||
        !nullableContentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = StreamedRequest(method, uri);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          onError: (error, trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = MultipartRequest(method, uri);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = nullableContentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      switch(method) {
        case 'POST': return await _client.post(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'PUT': return await _client.put(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'DELETE': return await _client.delete(uri, headers: nullableHeaderParams,);
        case 'PATCH': return await _client.patch(uri, headers: nullableHeaderParams, body: msgBody,);
        case 'HEAD': return await _client.head(uri, headers: nullableHeaderParams,);
        case 'GET': return await _client.get(uri, headers: nullableHeaderParams,);
      }
    } on SocketException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Socket operation failed: $method $path', e, trace,);
    } on TlsException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'TLS/SSL communication failed: $method $path', e, trace,);
    } on IOException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'I/O operation failed: $method $path', e, trace,);
    } on ClientException catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'HTTP connection failed: $method $path', e, trace,);
    } on Exception catch (e, trace) {
      throw ApiException.withInner(HttpStatus.badRequest, 'Exception occurred: $method $path', e, trace,);
    }

    throw ApiException(HttpStatus.badRequest, 'Invalid HTTP operation: $method $path',);
  }

  Future<dynamic> deserializeAsync(String json, String targetType, {bool growable}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(json, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String json, String targetType, {bool growable}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? json
      : _deserialize(jsonDecode(json), targetType, growable: growable == true);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object value) => value == null ? '' : json.encode(value);

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(
    List<String> authNames,
    List<QueryParam> queryParams,
    Map<String, String> headerParams,
  ) {
    for(final authName in authNames) {
      final auth = _authentications[authName];
      if (auth == null) {
        throw ArgumentError('Authentication undefined: $authName');
      }
      auth.applyToParams(queryParams, headerParams);
    }
  }

  static dynamic _deserialize(dynamic value, String targetType, {bool growable}) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
          break;
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'CallToFanRequestAction':
          return CallToFanRequestActionTypeTransformer().decode(value);
          
        case 'CampaignCampaignCodeState':
          return CampaignCampaignCodeStateTypeTransformer().decode(value);
          
        case 'ErrorResponse':
          return ErrorResponse.fromJson(value);
        case 'FanNotificationRequestSegment':
          return FanNotificationRequestSegmentTypeTransformer().decode(value);
          
        case 'GatewayruntimeError':
          return GatewayruntimeError.fromJson(value);
        case 'GrpcAddPointsRequest':
          return GrpcAddPointsRequest.fromJson(value);
        case 'GrpcAddPointsRequestNumExtension':
          return GrpcAddPointsRequestNumExtensionTypeTransformer().decode(value);
          
        case 'GrpcAddPointsResponse':
          return GrpcAddPointsResponse.fromJson(value);
        case 'GrpcAppleIapVerificationRequest':
          return GrpcAppleIapVerificationRequest.fromJson(value);
        case 'GrpcBreakDown':
          return GrpcBreakDown.fromJson(value);
        case 'GrpcCallToFanRequest':
          return GrpcCallToFanRequest.fromJson(value);
        case 'GrpcCallTransaction':
          return GrpcCallTransaction.fromJson(value);
        case 'GrpcCampaign':
          return GrpcCampaign.fromJson(value);
        case 'GrpcConsumeBalanceRequest':
          return GrpcConsumeBalanceRequest.fromJson(value);
        case 'GrpcConsumeBalanceResponse':
          return GrpcConsumeBalanceResponse.fromJson(value);
        case 'GrpcConsumeSerialCodeRequest':
          return GrpcConsumeSerialCodeRequest.fromJson(value);
        case 'GrpcCountNumReservedFanResponse':
          return GrpcCountNumReservedFanResponse.fromJson(value);
        case 'GrpcCreateBlockRequest':
          return GrpcCreateBlockRequest.fromJson(value);
        case 'GrpcCreateCampaignResponse':
          return GrpcCreateCampaignResponse.fromJson(value);
        case 'GrpcCreateContactReportRequest':
          return GrpcCreateContactReportRequest.fromJson(value);
        case 'GrpcCreateFanMeetingRequest':
          return GrpcCreateFanMeetingRequest.fromJson(value);
        case 'GrpcCreateFanMeetingResponse':
          return GrpcCreateFanMeetingResponse.fromJson(value);
        case 'GrpcCreateFollowRequest':
          return GrpcCreateFollowRequest.fromJson(value);
        case 'GrpcCreateIncentiveResponse':
          return GrpcCreateIncentiveResponse.fromJson(value);
        case 'GrpcCreateMessageByInfluencerRequest':
          return GrpcCreateMessageByInfluencerRequest.fromJson(value);
        case 'GrpcCreateMessageByInfluencerResponse':
          return GrpcCreateMessageByInfluencerResponse.fromJson(value);
        case 'GrpcCreateReservationRequest':
          return GrpcCreateReservationRequest.fromJson(value);
        case 'GrpcCreateReservationResponse':
          return GrpcCreateReservationResponse.fromJson(value);
        case 'GrpcCreateSerialCodeResponse':
          return GrpcCreateSerialCodeResponse.fromJson(value);
        case 'GrpcDeleteFanRequest':
          return GrpcDeleteFanRequest.fromJson(value);
        case 'GrpcEmpty':
          return GrpcEmpty.fromJson(value);
        case 'GrpcFan':
          return GrpcFan.fromJson(value);
        case 'GrpcFanMeeting':
          return GrpcFanMeeting.fromJson(value);
        case 'GrpcFanMeetingAndNumberOfReservation':
          return GrpcFanMeetingAndNumberOfReservation.fromJson(value);
        case 'GrpcFanMeetingAndReserved':
          return GrpcFanMeetingAndReserved.fromJson(value);
        case 'GrpcFanMeetingState':
          return GrpcFanMeetingStateTypeTransformer().decode(value);
          
        case 'GrpcFanNotificationResponse':
          return GrpcFanNotificationResponse.fromJson(value);
        case 'GrpcFanRefreshTokenRequest':
          return GrpcFanRefreshTokenRequest.fromJson(value);
        case 'GrpcFanRefreshTokenResponse':
          return GrpcFanRefreshTokenResponse.fromJson(value);
        case 'GrpcFanSex':
          return GrpcFanSexTypeTransformer().decode(value);
          
        case 'GrpcFanSignInRequest':
          return GrpcFanSignInRequest.fromJson(value);
        case 'GrpcFanSignInResponse':
          return GrpcFanSignInResponse.fromJson(value);
        case 'GrpcFanSignUpRequest':
          return GrpcFanSignUpRequest.fromJson(value);
        case 'GrpcFanSignUpResponse':
          return GrpcFanSignUpResponse.fromJson(value);
        case 'GrpcFanmeetingStyle':
          return GrpcFanmeetingStyleTypeTransformer().decode(value);
          
        case 'GrpcFeature':
          return GrpcFeature.fromJson(value);
        case 'GrpcGenre':
          return GrpcGenreTypeTransformer().decode(value);
          
        case 'GrpcGetBillingByMonthRes':
          return GrpcGetBillingByMonthRes.fromJson(value);
        case 'GrpcGetCallTransactionResponse':
          return GrpcGetCallTransactionResponse.fromJson(value);
        case 'GrpcGetFanMeetingResponse':
          return GrpcGetFanMeetingResponse.fromJson(value);
        case 'GrpcGetFanResponse':
          return GrpcGetFanResponse.fromJson(value);
        case 'GrpcGetFollowerNumByInfluencerUUIDResponse':
          return GrpcGetFollowerNumByInfluencerUUIDResponse.fromJson(value);
        case 'GrpcGetHavePaidBalanceFanNumResponse':
          return GrpcGetHavePaidBalanceFanNumResponse.fromJson(value);
        case 'GrpcGetInfluencerResponse':
          return GrpcGetInfluencerResponse.fromJson(value);
        case 'GrpcGetNumCallsResponse':
          return GrpcGetNumCallsResponse.fromJson(value);
        case 'GrpcGetRankingResponse':
          return GrpcGetRankingResponse.fromJson(value);
        case 'GrpcGetTotalNozokiNumByFanMeetingResponse':
          return GrpcGetTotalNozokiNumByFanMeetingResponse.fromJson(value);
        case 'GrpcGetUnfinishedReservationByFanResponse':
          return GrpcGetUnfinishedReservationByFanResponse.fromJson(value);
        case 'GrpcHealthResponse':
          return GrpcHealthResponse.fromJson(value);
        case 'GrpcHealthStatus':
          return GrpcHealthStatusTypeTransformer().decode(value);
          
        case 'GrpcIncentiveCode':
          return GrpcIncentiveCodeTypeTransformer().decode(value);
          
        case 'GrpcInfluencer':
          return GrpcInfluencer.fromJson(value);
        case 'GrpcInfluencerCredential':
          return GrpcInfluencerCredential.fromJson(value);
        case 'GrpcInfluencerRefreshTokenRequest':
          return GrpcInfluencerRefreshTokenRequest.fromJson(value);
        case 'GrpcInfluencerRefreshTokenResponse':
          return GrpcInfluencerRefreshTokenResponse.fromJson(value);
        case 'GrpcInfluencerSex':
          return GrpcInfluencerSexTypeTransformer().decode(value);
          
        case 'GrpcInfluencerSignInRequest':
          return GrpcInfluencerSignInRequest.fromJson(value);
        case 'GrpcInfluencerSignInResponse':
          return GrpcInfluencerSignInResponse.fromJson(value);
        case 'GrpcInfluencerSignUpRequestSex':
          return GrpcInfluencerSignUpRequestSexTypeTransformer().decode(value);
          
        case 'GrpcInfluencerSignUpResponse':
          return GrpcInfluencerSignUpResponse.fromJson(value);
        case 'GrpcIsExtension':
          return GrpcIsExtensionTypeTransformer().decode(value);
          
        case 'GrpcJoinedRoom':
          return GrpcJoinedRoom.fromJson(value);
        case 'GrpcListByFanMeetingIDResponse':
          return GrpcListByFanMeetingIDResponse.fromJson(value);
        case 'GrpcListCallHistoryByFanMeetingIDResponse':
          return GrpcListCallHistoryByFanMeetingIDResponse.fromJson(value);
        case 'GrpcListCampaignByFanResponse':
          return GrpcListCampaignByFanResponse.fromJson(value);
        case 'GrpcListCampaignByFanResponseMessage':
          return GrpcListCampaignByFanResponseMessage.fromJson(value);
        case 'GrpcListCampaignByInfluencerResponse':
          return GrpcListCampaignByInfluencerResponse.fromJson(value);
        case 'GrpcListFanMeetingsByGenreResponse':
          return GrpcListFanMeetingsByGenreResponse.fromJson(value);
        case 'GrpcListFanMeetingsByInfluencerUUIDResponse':
          return GrpcListFanMeetingsByInfluencerUUIDResponse.fromJson(value);
        case 'GrpcListFanMeetingsByTopicResponse':
          return GrpcListFanMeetingsByTopicResponse.fromJson(value);
        case 'GrpcListFanMeetingsResponse':
          return GrpcListFanMeetingsResponse.fromJson(value);
        case 'GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse':
          return GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse.fromJson(value);
        case 'GrpcListFeaturesResponse':
          return GrpcListFeaturesResponse.fromJson(value);
        case 'GrpcListFollowsByFanUUIDResponse':
          return GrpcListFollowsByFanUUIDResponse.fromJson(value);
        case 'GrpcListJoinedRoomByFanResponse':
          return GrpcListJoinedRoomByFanResponse.fromJson(value);
        case 'GrpcListMessageByFanUUIDResponse':
          return GrpcListMessageByFanUUIDResponse.fromJson(value);
        case 'GrpcListUnFollowsByFanUUIDResponse':
          return GrpcListUnFollowsByFanUUIDResponse.fromJson(value);
        case 'GrpcMessage':
          return GrpcMessage.fromJson(value);
        case 'GrpcMessageType':
          return GrpcMessageTypeTypeTransformer().decode(value);
          
        case 'GrpcNumExtension':
          return GrpcNumExtensionTypeTransformer().decode(value);
          
        case 'GrpcOption':
          return GrpcOptionTypeTransformer().decode(value);
          
        case 'GrpcRankingInfluencer':
          return GrpcRankingInfluencer.fromJson(value);
        case 'GrpcReasonCancelMembership':
          return GrpcReasonCancelMembershipTypeTransformer().decode(value);
          
        case 'GrpcReportType':
          return GrpcReportTypeTypeTransformer().decode(value);
          
        case 'GrpcReservation':
          return GrpcReservation.fromJson(value);
        case 'GrpcReservationAndFan':
          return GrpcReservationAndFan.fromJson(value);
        case 'GrpcReservationState':
          return GrpcReservationStateTypeTransformer().decode(value);
          
        case 'GrpcTimestamp':
          return GrpcTimestamp.fromJson(value);
        case 'GrpcTopic':
          return GrpcTopicTypeTransformer().decode(value);
          
        case 'GrpcUpdateCallTransactionRequest':
          return GrpcUpdateCallTransactionRequest.fromJson(value);
        case 'GrpcUpdateDisplayNameFanRequest':
          return GrpcUpdateDisplayNameFanRequest.fromJson(value);
        case 'GrpcUpdateDisplayNameFanResponse':
          return GrpcUpdateDisplayNameFanResponse.fromJson(value);
        case 'GrpcUpdateEmailFanRequest':
          return GrpcUpdateEmailFanRequest.fromJson(value);
        case 'GrpcUpdateEmailFanResponse':
          return GrpcUpdateEmailFanResponse.fromJson(value);
        case 'GrpcUpdateFanMeetingRequest':
          return GrpcUpdateFanMeetingRequest.fromJson(value);
        case 'GrpcUpdateFanRequest':
          return GrpcUpdateFanRequest.fromJson(value);
        case 'GrpcUpdateImageURIFanRequest':
          return GrpcUpdateImageURIFanRequest.fromJson(value);
        case 'GrpcUpdateImageURIFanResponse':
          return GrpcUpdateImageURIFanResponse.fromJson(value);
        case 'GrpcUpdateInfluencerRequest':
          return GrpcUpdateInfluencerRequest.fromJson(value);
        case 'GrpcUpdateIntroductionFanRequest':
          return GrpcUpdateIntroductionFanRequest.fromJson(value);
        case 'GrpcUpdateIntroductionFanResponse':
          return GrpcUpdateIntroductionFanResponse.fromJson(value);
        case 'GrpcUpdatePasswordFanRequest':
          return GrpcUpdatePasswordFanRequest.fromJson(value);
        case 'GrpcUpdateVoipTokenFanRequest':
          return GrpcUpdateVoipTokenFanRequest.fromJson(value);
        case 'GrpcUpdateVoipTokenFanResponse':
          return GrpcUpdateVoipTokenFanResponse.fromJson(value);
        case 'GrpcUploadChekiRequest':
          return GrpcUploadChekiRequest.fromJson(value);
        case 'GrpcUploadFanImageRequest':
          return GrpcUploadFanImageRequest.fromJson(value);
        case 'GrpcUploadFanImageResponse':
          return GrpcUploadFanImageResponse.fromJson(value);
        case 'GrpcUploadInfluencerImageRequest':
          return GrpcUploadInfluencerImageRequest.fromJson(value);
        case 'GrpcUploadInfluencerImageResponse':
          return GrpcUploadInfluencerImageResponse.fromJson(value);
        case 'GrpcUploadTencentInstantMessageLogByFanMeetingRequest':
          return GrpcUploadTencentInstantMessageLogByFanMeetingRequest.fromJson(value);
        case 'GrpcUploadTencentInstantMessageLogByReservationRequest':
          return GrpcUploadTencentInstantMessageLogByReservationRequest.fromJson(value);
        case 'GrpcUploadTencentLiteAVLogByFanMeetingRequest':
          return GrpcUploadTencentLiteAVLogByFanMeetingRequest.fromJson(value);
        case 'GrpcUploadTencentLiteAVLogByReservationRequest':
          return GrpcUploadTencentLiteAVLogByReservationRequest.fromJson(value);
        case 'GrpcUserType':
          return GrpcUserTypeTypeTransformer().decode(value);
          
        case 'GrpcWallet':
          return GrpcWallet.fromJson(value);
        case 'ListByFanMeetingIDResponseResult':
          return ListByFanMeetingIDResponseResult.fromJson(value);
        case 'ListJoinedRoomByFanResponseRoom':
          return ListJoinedRoomByFanResponseRoom.fromJson(value);
        case 'ProtobufAny':
          return ProtobufAny.fromJson(value);
        default:
          Match match;
          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
              .map((v) => _deserialize(v, targetType, growable: growable))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return value
              .map((v) => _deserialize(v, targetType, growable: growable))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match[1]; // ignore: parameter_assignments
            return Map.fromIterables(
              value.keys,
              value.values.map((v) => _deserialize(v, targetType, growable: growable)),
            );
          }
          break;
      }
    } catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    @required this.json,
    @required this.targetType,
    this.growable,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient._deserialize(
        jsonDecode(message.json),
        targetType,
        growable: message.growable == true,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object value) async => value == null ? '' : json.encode(value);
