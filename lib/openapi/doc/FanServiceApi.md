# openapi.api.FanServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev-api.only-live.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fanServiceDeleteFan**](FanServiceApi.md#fanservicedeletefan) | **PUT** /v1/fans/delete | 
[**fanServiceGetCallTransaction**](FanServiceApi.md#fanservicegetcalltransaction) | **GET** /v1/fans/{fan_uuid}/call_transaction | 
[**fanServiceGetFan**](FanServiceApi.md#fanservicegetfan) | **GET** /v1/fans/{uuid} | 
[**fanServiceListByFanMeetingID**](FanServiceApi.md#fanservicelistbyfanmeetingid) | **GET** /v1/fans/fan-meeting-id/{fan_meeting_id} | 
[**fanServiceUpdateCallTransaction**](FanServiceApi.md#fanserviceupdatecalltransaction) | **PUT** /v1/fans/{fan_uuid}/call_transaction | 
[**fanServiceUpdateDisplayNameFan**](FanServiceApi.md#fanserviceupdatedisplaynamefan) | **PUT** /v1/fans/display_name | 
[**fanServiceUpdateEmailFan**](FanServiceApi.md#fanserviceupdateemailfan) | **PUT** /v1/fans/email | 
[**fanServiceUpdateFan**](FanServiceApi.md#fanserviceupdatefan) | **PUT** /v1/fans | 
[**fanServiceUpdateImageURIFan**](FanServiceApi.md#fanserviceupdateimageurifan) | **PUT** /v1/fans/image_uri | 
[**fanServiceUpdateIntroductionFan**](FanServiceApi.md#fanserviceupdateintroductionfan) | **PUT** /v1/fans/introduction | 
[**fanServiceUpdatePasswordFan**](FanServiceApi.md#fanserviceupdatepasswordfan) | **PUT** /v1/fans/password | 
[**fanServiceUpdateVoipTokenFan**](FanServiceApi.md#fanserviceupdatevoiptokenfan) | **PUT** /v1/fans/voip_token | 
[**fanServiceUploadFanImage**](FanServiceApi.md#fanserviceuploadfanimage) | **POST** /v1/fans/upload | 


# **fanServiceDeleteFan**
> Object fanServiceDeleteFan(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanServiceApi();
final body = GrpcDeleteFanRequest(); // GrpcDeleteFanRequest | 

try { 
    final result = api_instance.fanServiceDeleteFan(body);
    print(result);
} catch (e) {
    print('Exception when calling FanServiceApi->fanServiceDeleteFan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcDeleteFanRequest**](GrpcDeleteFanRequest.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanServiceGetCallTransaction**
> GrpcGetCallTransactionResponse fanServiceGetCallTransaction(fanUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanServiceApi();
final fanUuid = fanUuid_example; // String | 

try { 
    final result = api_instance.fanServiceGetCallTransaction(fanUuid);
    print(result);
} catch (e) {
    print('Exception when calling FanServiceApi->fanServiceGetCallTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fanUuid** | **String**|  | 

### Return type

[**GrpcGetCallTransactionResponse**](GrpcGetCallTransactionResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanServiceGetFan**
> GrpcGetFanResponse fanServiceGetFan(uuid)



Get user's id and name

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanServiceApi();
final uuid = uuid_example; // String | 

try { 
    final result = api_instance.fanServiceGetFan(uuid);
    print(result);
} catch (e) {
    print('Exception when calling FanServiceApi->fanServiceGetFan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 

### Return type

[**GrpcGetFanResponse**](GrpcGetFanResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanServiceListByFanMeetingID**
> GrpcListByFanMeetingIDResponse fanServiceListByFanMeetingID(fanMeetingId)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanServiceApi();
final fanMeetingId = 789; // int | 

try { 
    final result = api_instance.fanServiceListByFanMeetingID(fanMeetingId);
    print(result);
} catch (e) {
    print('Exception when calling FanServiceApi->fanServiceListByFanMeetingID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fanMeetingId** | **int**|  | 

### Return type

[**GrpcListByFanMeetingIDResponse**](GrpcListByFanMeetingIDResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanServiceUpdateCallTransaction**
> Object fanServiceUpdateCallTransaction(fanUuid, body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanServiceApi();
final fanUuid = fanUuid_example; // String | 
final body = GrpcUpdateCallTransactionRequest(); // GrpcUpdateCallTransactionRequest | 

try { 
    final result = api_instance.fanServiceUpdateCallTransaction(fanUuid, body);
    print(result);
} catch (e) {
    print('Exception when calling FanServiceApi->fanServiceUpdateCallTransaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fanUuid** | **String**|  | 
 **body** | [**GrpcUpdateCallTransactionRequest**](GrpcUpdateCallTransactionRequest.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanServiceUpdateDisplayNameFan**
> GrpcUpdateDisplayNameFanResponse fanServiceUpdateDisplayNameFan(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanServiceApi();
final body = GrpcUpdateDisplayNameFanRequest(); // GrpcUpdateDisplayNameFanRequest | 

try { 
    final result = api_instance.fanServiceUpdateDisplayNameFan(body);
    print(result);
} catch (e) {
    print('Exception when calling FanServiceApi->fanServiceUpdateDisplayNameFan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUpdateDisplayNameFanRequest**](GrpcUpdateDisplayNameFanRequest.md)|  | 

### Return type

[**GrpcUpdateDisplayNameFanResponse**](GrpcUpdateDisplayNameFanResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanServiceUpdateEmailFan**
> GrpcUpdateEmailFanResponse fanServiceUpdateEmailFan(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanServiceApi();
final body = GrpcUpdateEmailFanRequest(); // GrpcUpdateEmailFanRequest | 

try { 
    final result = api_instance.fanServiceUpdateEmailFan(body);
    print(result);
} catch (e) {
    print('Exception when calling FanServiceApi->fanServiceUpdateEmailFan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUpdateEmailFanRequest**](GrpcUpdateEmailFanRequest.md)|  | 

### Return type

[**GrpcUpdateEmailFanResponse**](GrpcUpdateEmailFanResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanServiceUpdateFan**
> GrpcFan fanServiceUpdateFan(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanServiceApi();
final body = GrpcUpdateFanRequest(); // GrpcUpdateFanRequest | 

try { 
    final result = api_instance.fanServiceUpdateFan(body);
    print(result);
} catch (e) {
    print('Exception when calling FanServiceApi->fanServiceUpdateFan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUpdateFanRequest**](GrpcUpdateFanRequest.md)|  | 

### Return type

[**GrpcFan**](GrpcFan.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanServiceUpdateImageURIFan**
> GrpcUpdateImageURIFanResponse fanServiceUpdateImageURIFan(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanServiceApi();
final body = GrpcUpdateImageURIFanRequest(); // GrpcUpdateImageURIFanRequest | 

try { 
    final result = api_instance.fanServiceUpdateImageURIFan(body);
    print(result);
} catch (e) {
    print('Exception when calling FanServiceApi->fanServiceUpdateImageURIFan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUpdateImageURIFanRequest**](GrpcUpdateImageURIFanRequest.md)|  | 

### Return type

[**GrpcUpdateImageURIFanResponse**](GrpcUpdateImageURIFanResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanServiceUpdateIntroductionFan**
> GrpcUpdateIntroductionFanResponse fanServiceUpdateIntroductionFan(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanServiceApi();
final body = GrpcUpdateIntroductionFanRequest(); // GrpcUpdateIntroductionFanRequest | 

try { 
    final result = api_instance.fanServiceUpdateIntroductionFan(body);
    print(result);
} catch (e) {
    print('Exception when calling FanServiceApi->fanServiceUpdateIntroductionFan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUpdateIntroductionFanRequest**](GrpcUpdateIntroductionFanRequest.md)|  | 

### Return type

[**GrpcUpdateIntroductionFanResponse**](GrpcUpdateIntroductionFanResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanServiceUpdatePasswordFan**
> Object fanServiceUpdatePasswordFan(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanServiceApi();
final body = GrpcUpdatePasswordFanRequest(); // GrpcUpdatePasswordFanRequest | 

try { 
    final result = api_instance.fanServiceUpdatePasswordFan(body);
    print(result);
} catch (e) {
    print('Exception when calling FanServiceApi->fanServiceUpdatePasswordFan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUpdatePasswordFanRequest**](GrpcUpdatePasswordFanRequest.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanServiceUpdateVoipTokenFan**
> GrpcUpdateVoipTokenFanResponse fanServiceUpdateVoipTokenFan(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanServiceApi();
final body = GrpcUpdateVoipTokenFanRequest(); // GrpcUpdateVoipTokenFanRequest | 

try { 
    final result = api_instance.fanServiceUpdateVoipTokenFan(body);
    print(result);
} catch (e) {
    print('Exception when calling FanServiceApi->fanServiceUpdateVoipTokenFan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUpdateVoipTokenFanRequest**](GrpcUpdateVoipTokenFanRequest.md)|  | 

### Return type

[**GrpcUpdateVoipTokenFanResponse**](GrpcUpdateVoipTokenFanResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fanServiceUploadFanImage**
> GrpcUploadFanImageResponse fanServiceUploadFanImage(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FanServiceApi();
final body = GrpcUploadFanImageRequest(); // GrpcUploadFanImageRequest | 

try { 
    final result = api_instance.fanServiceUploadFanImage(body);
    print(result);
} catch (e) {
    print('Exception when calling FanServiceApi->fanServiceUploadFanImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUploadFanImageRequest**](GrpcUploadFanImageRequest.md)|  | 

### Return type

[**GrpcUploadFanImageResponse**](GrpcUploadFanImageResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

