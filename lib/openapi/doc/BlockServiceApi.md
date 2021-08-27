# openapi.api.BlockServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev-api.only-live.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**blockServiceCreateBlock**](BlockServiceApi.md#blockservicecreateblock) | **POST** /v1/blocks | 


# **blockServiceCreateBlock**
> Object blockServiceCreateBlock(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = BlockServiceApi();
final body = GrpcCreateBlockRequest(); // GrpcCreateBlockRequest | 

try { 
    final result = api_instance.blockServiceCreateBlock(body);
    print(result);
} catch (e) {
    print('Exception when calling BlockServiceApi->blockServiceCreateBlock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcCreateBlockRequest**](GrpcCreateBlockRequest.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

