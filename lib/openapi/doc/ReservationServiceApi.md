# openapi.api.ReservationServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev-api.only-live.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reservationServiceCountNumReservedFan**](ReservationServiceApi.md#reservationservicecountnumreservedfan) | **GET** /v1/reservations/fans/{fan_uuid}/fan-meeting/{fan_meeting_id} | 
[**reservationServiceCreateReservation**](ReservationServiceApi.md#reservationservicecreatereservation) | **POST** /v1/reservations | 
[**reservationServiceDeleteReservation**](ReservationServiceApi.md#reservationservicedeletereservation) | **DELETE** /v1/reservations/{id} | 
[**reservationServiceGetNumCalls**](ReservationServiceApi.md#reservationservicegetnumcalls) | **GET** /v1/reservations/fans/{fan_uuid}/influencers/{influencer_uuid} | 
[**reservationServiceGetReservation**](ReservationServiceApi.md#reservationservicegetreservation) | **GET** /v1/reservations/{id} | 
[**reservationServiceGetUnfinishedReservationByFan**](ReservationServiceApi.md#reservationservicegetunfinishedreservationbyfan) | **GET** /v1/reservations/wait/fans/{fan_uuid} | 
[**reservationServiceListCallHistoryByFanMeetingID**](ReservationServiceApi.md#reservationservicelistcallhistorybyfanmeetingid) | **GET** /v1/fan-meetings/{id}/call_history | 
[**reservationServiceRemoveFanByReservation**](ReservationServiceApi.md#reservationserviceremovefanbyreservation) | **POST** /v1/reservations/id/{id}/remove/fan | 
[**reservationServiceUploadCheki**](ReservationServiceApi.md#reservationserviceuploadcheki) | **PUT** /v1/reservations/upload/cheki | 
[**reservationServiceUploadTencentInstantMessageLogByReservation**](ReservationServiceApi.md#reservationserviceuploadtencentinstantmessagelogbyreservation) | **PUT** /v1/reservations/upload/tencent-log/im | 
[**reservationServiceUploadTencentLiteAVLogByReservation**](ReservationServiceApi.md#reservationserviceuploadtencentliteavlogbyreservation) | **PUT** /v1/reservations/upload/tencent-log/lite-av | 


# **reservationServiceCountNumReservedFan**
> GrpcCountNumReservedFanResponse reservationServiceCountNumReservedFan(fanUuid, fanMeetingId)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = ReservationServiceApi();
final fanUuid = fanUuid_example; // String | 
final fanMeetingId = 789; // int | 

try { 
    final result = api_instance.reservationServiceCountNumReservedFan(fanUuid, fanMeetingId);
    print(result);
} catch (e) {
    print('Exception when calling ReservationServiceApi->reservationServiceCountNumReservedFan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fanUuid** | **String**|  | 
 **fanMeetingId** | **int**|  | 

### Return type

[**GrpcCountNumReservedFanResponse**](GrpcCountNumReservedFanResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reservationServiceCreateReservation**
> GrpcCreateReservationResponse reservationServiceCreateReservation(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = ReservationServiceApi();
final body = GrpcCreateReservationRequest(); // GrpcCreateReservationRequest | 

try { 
    final result = api_instance.reservationServiceCreateReservation(body);
    print(result);
} catch (e) {
    print('Exception when calling ReservationServiceApi->reservationServiceCreateReservation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcCreateReservationRequest**](GrpcCreateReservationRequest.md)|  | 

### Return type

[**GrpcCreateReservationResponse**](GrpcCreateReservationResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reservationServiceDeleteReservation**
> GrpcEmpty reservationServiceDeleteReservation(id)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = ReservationServiceApi();
final id = 789; // int | 

try { 
    final result = api_instance.reservationServiceDeleteReservation(id);
    print(result);
} catch (e) {
    print('Exception when calling ReservationServiceApi->reservationServiceDeleteReservation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**GrpcEmpty**](GrpcEmpty.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reservationServiceGetNumCalls**
> GrpcGetNumCallsResponse reservationServiceGetNumCalls(fanUuid, influencerUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = ReservationServiceApi();
final fanUuid = fanUuid_example; // String | 
final influencerUuid = influencerUuid_example; // String | 

try { 
    final result = api_instance.reservationServiceGetNumCalls(fanUuid, influencerUuid);
    print(result);
} catch (e) {
    print('Exception when calling ReservationServiceApi->reservationServiceGetNumCalls: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fanUuid** | **String**|  | 
 **influencerUuid** | **String**|  | 

### Return type

[**GrpcGetNumCallsResponse**](GrpcGetNumCallsResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reservationServiceGetReservation**
> GrpcReservation reservationServiceGetReservation(id)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = ReservationServiceApi();
final id = 789; // int | 

try { 
    final result = api_instance.reservationServiceGetReservation(id);
    print(result);
} catch (e) {
    print('Exception when calling ReservationServiceApi->reservationServiceGetReservation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**GrpcReservation**](GrpcReservation.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reservationServiceGetUnfinishedReservationByFan**
> GrpcGetUnfinishedReservationByFanResponse reservationServiceGetUnfinishedReservationByFan(fanUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = ReservationServiceApi();
final fanUuid = fanUuid_example; // String | 

try { 
    final result = api_instance.reservationServiceGetUnfinishedReservationByFan(fanUuid);
    print(result);
} catch (e) {
    print('Exception when calling ReservationServiceApi->reservationServiceGetUnfinishedReservationByFan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fanUuid** | **String**|  | 

### Return type

[**GrpcGetUnfinishedReservationByFanResponse**](GrpcGetUnfinishedReservationByFanResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reservationServiceListCallHistoryByFanMeetingID**
> GrpcListCallHistoryByFanMeetingIDResponse reservationServiceListCallHistoryByFanMeetingID(id)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = ReservationServiceApi();
final id = 789; // int | 

try { 
    final result = api_instance.reservationServiceListCallHistoryByFanMeetingID(id);
    print(result);
} catch (e) {
    print('Exception when calling ReservationServiceApi->reservationServiceListCallHistoryByFanMeetingID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**GrpcListCallHistoryByFanMeetingIDResponse**](GrpcListCallHistoryByFanMeetingIDResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reservationServiceRemoveFanByReservation**
> GrpcEmpty reservationServiceRemoveFanByReservation(id)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = ReservationServiceApi();
final id = 789; // int | 

try { 
    final result = api_instance.reservationServiceRemoveFanByReservation(id);
    print(result);
} catch (e) {
    print('Exception when calling ReservationServiceApi->reservationServiceRemoveFanByReservation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | 

### Return type

[**GrpcEmpty**](GrpcEmpty.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reservationServiceUploadCheki**
> GrpcEmpty reservationServiceUploadCheki(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = ReservationServiceApi();
final body = GrpcUploadChekiRequest(); // GrpcUploadChekiRequest | 

try { 
    final result = api_instance.reservationServiceUploadCheki(body);
    print(result);
} catch (e) {
    print('Exception when calling ReservationServiceApi->reservationServiceUploadCheki: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUploadChekiRequest**](GrpcUploadChekiRequest.md)|  | 

### Return type

[**GrpcEmpty**](GrpcEmpty.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reservationServiceUploadTencentInstantMessageLogByReservation**
> GrpcEmpty reservationServiceUploadTencentInstantMessageLogByReservation(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = ReservationServiceApi();
final body = GrpcUploadTencentInstantMessageLogByReservationRequest(); // GrpcUploadTencentInstantMessageLogByReservationRequest | 

try { 
    final result = api_instance.reservationServiceUploadTencentInstantMessageLogByReservation(body);
    print(result);
} catch (e) {
    print('Exception when calling ReservationServiceApi->reservationServiceUploadTencentInstantMessageLogByReservation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUploadTencentInstantMessageLogByReservationRequest**](GrpcUploadTencentInstantMessageLogByReservationRequest.md)|  | 

### Return type

[**GrpcEmpty**](GrpcEmpty.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reservationServiceUploadTencentLiteAVLogByReservation**
> GrpcEmpty reservationServiceUploadTencentLiteAVLogByReservation(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = ReservationServiceApi();
final body = GrpcUploadTencentLiteAVLogByReservationRequest(); // GrpcUploadTencentLiteAVLogByReservationRequest | 

try { 
    final result = api_instance.reservationServiceUploadTencentLiteAVLogByReservation(body);
    print(result);
} catch (e) {
    print('Exception when calling ReservationServiceApi->reservationServiceUploadTencentLiteAVLogByReservation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUploadTencentLiteAVLogByReservationRequest**](GrpcUploadTencentLiteAVLogByReservationRequest.md)|  | 

### Return type

[**GrpcEmpty**](GrpcEmpty.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

