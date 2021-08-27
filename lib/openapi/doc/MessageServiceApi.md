# openapi.api.MessageServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev-api.only-live.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**messageServiceCreateMessageByInfluencer**](MessageServiceApi.md#messageservicecreatemessagebyinfluencer) | **POST** /v1/messages/influencers/{influencer_uuid} | 
[**messageServiceListJoinedRoomByFan**](MessageServiceApi.md#messageservicelistjoinedroombyfan) | **GET** /v1/fans/{fan_uuid}/joined_rooms | 
[**messageServiceListMessageByFanUUID**](MessageServiceApi.md#messageservicelistmessagebyfanuuid) | **GET** /v1/fans/{fan_uuid}/talk_rooms/{talk_room_uuid}/messages | 


# **messageServiceCreateMessageByInfluencer**
> GrpcCreateMessageByInfluencerResponse messageServiceCreateMessageByInfluencer(influencerUuid, body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = MessageServiceApi();
final influencerUuid = influencerUuid_example; // String | 
final body = GrpcCreateMessageByInfluencerRequest(); // GrpcCreateMessageByInfluencerRequest | 

try { 
    final result = api_instance.messageServiceCreateMessageByInfluencer(influencerUuid, body);
    print(result);
} catch (e) {
    print('Exception when calling MessageServiceApi->messageServiceCreateMessageByInfluencer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **influencerUuid** | **String**|  | 
 **body** | [**GrpcCreateMessageByInfluencerRequest**](GrpcCreateMessageByInfluencerRequest.md)|  | 

### Return type

[**GrpcCreateMessageByInfluencerResponse**](GrpcCreateMessageByInfluencerResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **messageServiceListJoinedRoomByFan**
> GrpcListJoinedRoomByFanResponse messageServiceListJoinedRoomByFan(fanUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = MessageServiceApi();
final fanUuid = fanUuid_example; // String | 

try { 
    final result = api_instance.messageServiceListJoinedRoomByFan(fanUuid);
    print(result);
} catch (e) {
    print('Exception when calling MessageServiceApi->messageServiceListJoinedRoomByFan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fanUuid** | **String**|  | 

### Return type

[**GrpcListJoinedRoomByFanResponse**](GrpcListJoinedRoomByFanResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **messageServiceListMessageByFanUUID**
> GrpcListMessageByFanUUIDResponse messageServiceListMessageByFanUUID(fanUuid, talkRoomUuid, nextSeekDate)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = MessageServiceApi();
final fanUuid = fanUuid_example; // String | 
final talkRoomUuid = talkRoomUuid_example; // String | 
final nextSeekDate = 56; // int | 

try { 
    final result = api_instance.messageServiceListMessageByFanUUID(fanUuid, talkRoomUuid, nextSeekDate);
    print(result);
} catch (e) {
    print('Exception when calling MessageServiceApi->messageServiceListMessageByFanUUID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fanUuid** | **String**|  | 
 **talkRoomUuid** | **String**|  | 
 **nextSeekDate** | **int**|  | [optional] 

### Return type

[**GrpcListMessageByFanUUIDResponse**](GrpcListMessageByFanUUIDResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

