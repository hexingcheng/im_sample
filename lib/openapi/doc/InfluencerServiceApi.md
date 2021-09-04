# openapi.api.InfluencerServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev-api.only-live.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**influencerServiceCallToFan**](InfluencerServiceApi.md#influencerservicecalltofan) | **POST** /v1/influencers/call | 
[**influencerServiceDeleteInfluencer**](InfluencerServiceApi.md#influencerservicedeleteinfluencer) | **DELETE** /v1/influencers/{uuid} | 
[**influencerServiceDeleteInfluencerImage**](InfluencerServiceApi.md#influencerservicedeleteinfluencerimage) | **DELETE** /v1/influencers/{influencer_uuid}/image | 
[**influencerServiceGetInfluencer**](InfluencerServiceApi.md#influencerservicegetinfluencer) | **GET** /v1/influencers/uuid/{uuid} | 
[**influencerServiceUpdateInfluencer**](InfluencerServiceApi.md#influencerserviceupdateinfluencer) | **PUT** /v1/influencers | 
[**influencerServiceUpdateInfluencerLinks**](InfluencerServiceApi.md#influencerserviceupdateinfluencerlinks) | **PUT** /v1/influencers/links | 
[**influencerServiceUploadInfluencerImage**](InfluencerServiceApi.md#influencerserviceuploadinfluencerimage) | **PUT** /v1/influencers/upload/image | 


# **influencerServiceCallToFan**
> GrpcEmpty influencerServiceCallToFan(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = InfluencerServiceApi();
final body = GrpcCallToFanRequest(); // GrpcCallToFanRequest | 

try { 
    final result = api_instance.influencerServiceCallToFan(body);
    print(result);
} catch (e) {
    print('Exception when calling InfluencerServiceApi->influencerServiceCallToFan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcCallToFanRequest**](GrpcCallToFanRequest.md)|  | 

### Return type

[**GrpcEmpty**](GrpcEmpty.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **influencerServiceDeleteInfluencer**
> GrpcEmpty influencerServiceDeleteInfluencer(uuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = InfluencerServiceApi();
final uuid = uuid_example; // String | 

try { 
    final result = api_instance.influencerServiceDeleteInfluencer(uuid);
    print(result);
} catch (e) {
    print('Exception when calling InfluencerServiceApi->influencerServiceDeleteInfluencer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 

### Return type

[**GrpcEmpty**](GrpcEmpty.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **influencerServiceDeleteInfluencerImage**
> GrpcEmpty influencerServiceDeleteInfluencerImage(influencerUuid, imageUri)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = InfluencerServiceApi();
final influencerUuid = influencerUuid_example; // String | 
final imageUri = imageUri_example; // String | 

try { 
    final result = api_instance.influencerServiceDeleteInfluencerImage(influencerUuid, imageUri);
    print(result);
} catch (e) {
    print('Exception when calling InfluencerServiceApi->influencerServiceDeleteInfluencerImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **influencerUuid** | **String**|  | 
 **imageUri** | **String**|  | [optional] 

### Return type

[**GrpcEmpty**](GrpcEmpty.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **influencerServiceGetInfluencer**
> GrpcGetInfluencerResponse influencerServiceGetInfluencer(uuid, fanUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = InfluencerServiceApi();
final uuid = uuid_example; // String | 
final fanUuid = fanUuid_example; // String | 

try { 
    final result = api_instance.influencerServiceGetInfluencer(uuid, fanUuid);
    print(result);
} catch (e) {
    print('Exception when calling InfluencerServiceApi->influencerServiceGetInfluencer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 
 **fanUuid** | **String**|  | [optional] 

### Return type

[**GrpcGetInfluencerResponse**](GrpcGetInfluencerResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **influencerServiceUpdateInfluencer**
> GrpcInfluencer influencerServiceUpdateInfluencer(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = InfluencerServiceApi();
final body = GrpcUpdateInfluencerRequest(); // GrpcUpdateInfluencerRequest | 

try { 
    final result = api_instance.influencerServiceUpdateInfluencer(body);
    print(result);
} catch (e) {
    print('Exception when calling InfluencerServiceApi->influencerServiceUpdateInfluencer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUpdateInfluencerRequest**](GrpcUpdateInfluencerRequest.md)|  | 

### Return type

[**GrpcInfluencer**](GrpcInfluencer.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **influencerServiceUpdateInfluencerLinks**
> GrpcInfluencer influencerServiceUpdateInfluencerLinks(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = InfluencerServiceApi();
final body = GrpcUpdateInfluencerRequest(); // GrpcUpdateInfluencerRequest | 

try { 
    final result = api_instance.influencerServiceUpdateInfluencerLinks(body);
    print(result);
} catch (e) {
    print('Exception when calling InfluencerServiceApi->influencerServiceUpdateInfluencerLinks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUpdateInfluencerRequest**](GrpcUpdateInfluencerRequest.md)|  | 

### Return type

[**GrpcInfluencer**](GrpcInfluencer.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **influencerServiceUploadInfluencerImage**
> GrpcUploadInfluencerImageResponse influencerServiceUploadInfluencerImage(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = InfluencerServiceApi();
final body = GrpcUploadInfluencerImageRequest(); // GrpcUploadInfluencerImageRequest | 

try { 
    final result = api_instance.influencerServiceUploadInfluencerImage(body);
    print(result);
} catch (e) {
    print('Exception when calling InfluencerServiceApi->influencerServiceUploadInfluencerImage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcUploadInfluencerImageRequest**](GrpcUploadInfluencerImageRequest.md)|  | 

### Return type

[**GrpcUploadInfluencerImageResponse**](GrpcUploadInfluencerImageResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

