# openapi.api.PointServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev-api.only-live.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pointServiceAddPoints**](PointServiceApi.md#pointserviceaddpoints) | **POST** /v1/points | 
[**pointServiceGetRanking**](PointServiceApi.md#pointservicegetranking) | **GET** /v1/ranking | 


# **pointServiceAddPoints**
> GrpcAddPointsResponse pointServiceAddPoints(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = PointServiceApi();
final body = GrpcAddPointsRequest(); // GrpcAddPointsRequest | 

try { 
    final result = api_instance.pointServiceAddPoints(body);
    print(result);
} catch (e) {
    print('Exception when calling PointServiceApi->pointServiceAddPoints: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcAddPointsRequest**](GrpcAddPointsRequest.md)|  | 

### Return type

[**GrpcAddPointsResponse**](GrpcAddPointsResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pointServiceGetRanking**
> GrpcGetRankingResponse pointServiceGetRanking()



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = PointServiceApi();

try { 
    final result = api_instance.pointServiceGetRanking();
    print(result);
} catch (e) {
    print('Exception when calling PointServiceApi->pointServiceGetRanking: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GrpcGetRankingResponse**](GrpcGetRankingResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

