# openapi.api.HealthServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev-api.only-live.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthServiceHealthCheck**](HealthServiceApi.md#healthservicehealthcheck) | **GET** /v1/health | 


# **healthServiceHealthCheck**
> GrpcHealthResponse healthServiceHealthCheck(status)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = HealthServiceApi();
final status = 56; // int | 

try { 
    final result = api_instance.healthServiceHealthCheck(status);
    print(result);
} catch (e) {
    print('Exception when calling HealthServiceApi->healthServiceHealthCheck: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **int**|  | [optional] [default to 0]

### Return type

[**GrpcHealthResponse**](GrpcHealthResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

