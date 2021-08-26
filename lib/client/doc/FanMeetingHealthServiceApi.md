# openapi.api.FanMeetingHealthServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev-api.only-live.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fanMeetingHealthServiceFanMeetingHealth**](FanMeetingHealthServiceApi.md#fanmeetinghealthservicefanmeetinghealth) | **GET** /v1/fan-meetings/health/{fan_meeting_id} | 


# **fanMeetingHealthServiceFanMeetingHealth**
> Object fanMeetingHealthServiceFanMeetingHealth(fanMeetingId)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanMeetingHealthServiceApi();
final fanMeetingId = 789; // int | 

try { 
    final result = api_instance.fanMeetingHealthServiceFanMeetingHealth(fanMeetingId);
    print(result);
} catch (e) {
    print('Exception when calling FanMeetingHealthServiceApi->fanMeetingHealthServiceFanMeetingHealth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fanMeetingId** | **int**|  | 

### Return type

[**Object**](Object.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

