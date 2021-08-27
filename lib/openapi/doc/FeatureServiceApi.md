# openapi.api.FeatureServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev-api.only-live.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**featureServiceListFeatures**](FeatureServiceApi.md#featureservicelistfeatures) | **GET** /v1/features | 


# **featureServiceListFeatures**
> GrpcListFeaturesResponse featureServiceListFeatures(pageSize, pageToken)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FeatureServiceApi();
final pageSize = 789; // int | 
final pageToken = pageToken_example; // String | 

try { 
    final result = api_instance.featureServiceListFeatures(pageSize, pageToken);
    print(result);
} catch (e) {
    print('Exception when calling FeatureServiceApi->featureServiceListFeatures: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**|  | [optional] 
 **pageToken** | **String**|  | [optional] 

### Return type

[**GrpcListFeaturesResponse**](GrpcListFeaturesResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

