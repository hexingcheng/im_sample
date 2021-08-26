# openapi.api.FanMeetingServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev-api.only-live.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fanMeetingServiceCreateFanMeeting**](FanMeetingServiceApi.md#fanmeetingservicecreatefanmeeting) | **POST** /v1/fan-meetings | 
[**fanMeetingServiceGetFanMeeting**](FanMeetingServiceApi.md#fanmeetingservicegetfanmeeting) | **GET** /v1/fan-meetings/id/{id} | 
[**fanMeetingServiceGetTotalNozokiNumByFanMeeting**](FanMeetingServiceApi.md#fanmeetingservicegettotalnozokinumbyfanmeeting) | **GET** /v1/fan-meetings/id/{id}/nozoki | 
[**fanMeetingServiceListFanMeetings**](FanMeetingServiceApi.md#fanmeetingservicelistfanmeetings) | **GET** /v1/fan-meetings | 
[**fanMeetingServiceListFanMeetingsByGenre**](FanMeetingServiceApi.md#fanmeetingservicelistfanmeetingsbygenre) | **GET** /v1/fan-meetings/genre/{genre} | 
[**fanMeetingServiceListFanMeetingsByInfluencerUUID**](FanMeetingServiceApi.md#fanmeetingservicelistfanmeetingsbyinfluenceruuid) | **GET** /v1/fan-meetings/influencers/{influencer_uuid} | 
[**fanMeetingServiceListFanMeetingsByTopic**](FanMeetingServiceApi.md#fanmeetingservicelistfanmeetingsbytopic) | **GET** /v1/fan-meetings/topic/{topic} | 
[**fanMeetingServiceListFanMeetingsWithReservationOnlyByInfluencerUUID**](FanMeetingServiceApi.md#fanmeetingservicelistfanmeetingswithreservationonlybyinfluenceruuid) | **GET** /v1/fan-meetings/reserved/influencers/{influencer_uuid} | 
[**fanMeetingServiceRemoveFanByFanMeeting**](FanMeetingServiceApi.md#fanmeetingserviceremovefanbyfanmeeting) | **POST** /v1/fan-meetings/id/{id}/remove/fan | 
[**fanMeetingServiceUpdateFanMeeting**](FanMeetingServiceApi.md#fanmeetingserviceupdatefanmeeting) | **PUT** /v1/fan-meetings | 
[**fanMeetingServiceUploadTencentInstantMessageLogByFanMeeting**](FanMeetingServiceApi.md#fanmeetingserviceuploadtencentinstantmessagelogbyfanmeeting) | **PUT** /v1/fan-meetings/upload/tencent-log/im | 
[**fanMeetingServiceUploadTencentLiteAVLogByFanMeeting**](FanMeetingServiceApi.md#fanmeetingserviceuploadtencentliteavlogbyfanmeeting) | **PUT** /v1/fan-meetings/upload/tencent-log/lite-av | 


# **fanMeetingServiceCreateFanMeeting**
> GrpcCreateFanMeetingResponse fanMeetingServiceCreateFanMeeting(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanMeetingServiceApi();
final body = GrpcCreateFanMeetingRequest(); // GrpcCreateFanMeetingRequest | 

try { 
    final result = api_instance.fanMeetingServiceCreateFanMeeting(body);
    print(result);
} catch (e) {
    print('Exception when calling FanMeetingServiceApi->fanMeetingServiceCreateFanMeeting: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcCreateFanMeetingRequest**](GrpcCreateFanMeetingRequest.md)|  | 

### Return type

[**GrpcCreateFanMeetingResponse**](GrpcCreateFanMeetingResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanMeetingServiceGetFanMeeting**
> GrpcGetFanMeetingResponse fanMeetingServiceGetFanMeeting(id, fanUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanMeetingServiceApi();
final id = 789; // int | 
final fanUuid = fanUuid_example; // String | 

try { 
    final result = api_instance.fanMeetingServiceGetFanMeeting(id, fanUuid);
    print(result);
} catch (e) {
    print('Exception when calling FanMeetingServiceApi->fanMeetingServiceGetFanMeeting: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 
 **fanUuid** | **String**|  | [optional] 

### Return type

[**GrpcGetFanMeetingResponse**](GrpcGetFanMeetingResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanMeetingServiceGetTotalNozokiNumByFanMeeting**
> GrpcGetTotalNozokiNumByFanMeetingResponse fanMeetingServiceGetTotalNozokiNumByFanMeeting(id)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanMeetingServiceApi();
final id = 789; // int | 

try { 
    final result = api_instance.fanMeetingServiceGetTotalNozokiNumByFanMeeting(id);
    print(result);
} catch (e) {
    print('Exception when calling FanMeetingServiceApi->fanMeetingServiceGetTotalNozokiNumByFanMeeting: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**GrpcGetTotalNozokiNumByFanMeetingResponse**](GrpcGetTotalNozokiNumByFanMeetingResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanMeetingServiceListFanMeetings**
> GrpcListFanMeetingsResponse fanMeetingServiceListFanMeetings(pageToken, state, fanUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanMeetingServiceApi();
final pageToken = pageToken_example; // String | 
final state = state_example; // String | 
final fanUuid = fanUuid_example; // String | 

try { 
    final result = api_instance.fanMeetingServiceListFanMeetings(pageToken, state, fanUuid);
    print(result);
} catch (e) {
    print('Exception when calling FanMeetingServiceApi->fanMeetingServiceListFanMeetings: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageToken** | **String**|  | [optional] 
 **state** | **String**|  | [optional] [default to 'state_unknown']
 **fanUuid** | **String**|  | [optional] 

### Return type

[**GrpcListFanMeetingsResponse**](GrpcListFanMeetingsResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanMeetingServiceListFanMeetingsByGenre**
> GrpcListFanMeetingsByGenreResponse fanMeetingServiceListFanMeetingsByGenre(genre, pageToken, fanUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanMeetingServiceApi();
final genre = genre_example; // String | 
final pageToken = pageToken_example; // String | 
final fanUuid = fanUuid_example; // String | 

try { 
    final result = api_instance.fanMeetingServiceListFanMeetingsByGenre(genre, pageToken, fanUuid);
    print(result);
} catch (e) {
    print('Exception when calling FanMeetingServiceApi->fanMeetingServiceListFanMeetingsByGenre: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **genre** | **String**|  | 
 **pageToken** | **String**|  | [optional] 
 **fanUuid** | **String**|  | [optional] 

### Return type

[**GrpcListFanMeetingsByGenreResponse**](GrpcListFanMeetingsByGenreResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanMeetingServiceListFanMeetingsByInfluencerUUID**
> GrpcListFanMeetingsByInfluencerUUIDResponse fanMeetingServiceListFanMeetingsByInfluencerUUID(influencerUuid, fanUuid, state)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanMeetingServiceApi();
final influencerUuid = influencerUuid_example; // String | 
final fanUuid = fanUuid_example; // String | 
final state = state_example; // String | 

try { 
    final result = api_instance.fanMeetingServiceListFanMeetingsByInfluencerUUID(influencerUuid, fanUuid, state);
    print(result);
} catch (e) {
    print('Exception when calling FanMeetingServiceApi->fanMeetingServiceListFanMeetingsByInfluencerUUID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **influencerUuid** | **String**|  | 
 **fanUuid** | **String**|  | [optional] 
 **state** | **String**|  | [optional] [default to 'state_unknown']

### Return type

[**GrpcListFanMeetingsByInfluencerUUIDResponse**](GrpcListFanMeetingsByInfluencerUUIDResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanMeetingServiceListFanMeetingsByTopic**
> GrpcListFanMeetingsByTopicResponse fanMeetingServiceListFanMeetingsByTopic(topic, pageToken, fanUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanMeetingServiceApi();
final topic = topic_example; // String | 
final pageToken = pageToken_example; // String | 
final fanUuid = fanUuid_example; // String | 

try { 
    final result = api_instance.fanMeetingServiceListFanMeetingsByTopic(topic, pageToken, fanUuid);
    print(result);
} catch (e) {
    print('Exception when calling FanMeetingServiceApi->fanMeetingServiceListFanMeetingsByTopic: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topic** | **String**|  | 
 **pageToken** | **String**|  | [optional] 
 **fanUuid** | **String**|  | [optional] 

### Return type

[**GrpcListFanMeetingsByTopicResponse**](GrpcListFanMeetingsByTopicResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanMeetingServiceListFanMeetingsWithReservationOnlyByInfluencerUUID**
> GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse fanMeetingServiceListFanMeetingsWithReservationOnlyByInfluencerUUID(influencerUuid, nextSeekDate)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanMeetingServiceApi();
final influencerUuid = influencerUuid_example; // String | 
final nextSeekDate = 56; // int | 

try { 
    final result = api_instance.fanMeetingServiceListFanMeetingsWithReservationOnlyByInfluencerUUID(influencerUuid, nextSeekDate);
    print(result);
} catch (e) {
    print('Exception when calling FanMeetingServiceApi->fanMeetingServiceListFanMeetingsWithReservationOnlyByInfluencerUUID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **influencerUuid** | **String**|  | 
 **nextSeekDate** | **int**|  | [optional] 

### Return type

[**GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse**](GrpcListFanMeetingsWithReservationOnlyByInfluencerUUIDResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanMeetingServiceRemoveFanByFanMeeting**
> Object fanMeetingServiceRemoveFanByFanMeeting(id)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanMeetingServiceApi();
final id = 789; // int | 

try { 
    final result = api_instance.fanMeetingServiceRemoveFanByFanMeeting(id);
    print(result);
} catch (e) {
    print('Exception when calling FanMeetingServiceApi->fanMeetingServiceRemoveFanByFanMeeting: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**Object**](Object.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanMeetingServiceUpdateFanMeeting**
> Object fanMeetingServiceUpdateFanMeeting(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanMeetingServiceApi();
final body = GrpcUpdateFanMeetingRequest(); // GrpcUpdateFanMeetingRequest | 

try { 
    final result = api_instance.fanMeetingServiceUpdateFanMeeting(body);
    print(result);
} catch (e) {
    print('Exception when calling FanMeetingServiceApi->fanMeetingServiceUpdateFanMeeting: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUpdateFanMeetingRequest**](GrpcUpdateFanMeetingRequest.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanMeetingServiceUploadTencentInstantMessageLogByFanMeeting**
> Object fanMeetingServiceUploadTencentInstantMessageLogByFanMeeting(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanMeetingServiceApi();
final body = GrpcUploadTencentInstantMessageLogByFanMeetingRequest(); // GrpcUploadTencentInstantMessageLogByFanMeetingRequest | 

try { 
    final result = api_instance.fanMeetingServiceUploadTencentInstantMessageLogByFanMeeting(body);
    print(result);
} catch (e) {
    print('Exception when calling FanMeetingServiceApi->fanMeetingServiceUploadTencentInstantMessageLogByFanMeeting: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUploadTencentInstantMessageLogByFanMeetingRequest**](GrpcUploadTencentInstantMessageLogByFanMeetingRequest.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanMeetingServiceUploadTencentLiteAVLogByFanMeeting**
> Object fanMeetingServiceUploadTencentLiteAVLogByFanMeeting(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanMeetingServiceApi();
final body = GrpcUploadTencentLiteAVLogByFanMeetingRequest(); // GrpcUploadTencentLiteAVLogByFanMeetingRequest | 

try { 
    final result = api_instance.fanMeetingServiceUploadTencentLiteAVLogByFanMeeting(body);
    print(result);
} catch (e) {
    print('Exception when calling FanMeetingServiceApi->fanMeetingServiceUploadTencentLiteAVLogByFanMeeting: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUploadTencentLiteAVLogByFanMeetingRequest**](GrpcUploadTencentLiteAVLogByFanMeetingRequest.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

