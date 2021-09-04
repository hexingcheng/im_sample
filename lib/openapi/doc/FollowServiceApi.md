# openapi.api.FollowServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev-api.only-live.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**followServiceCreateFollow**](FollowServiceApi.md#followservicecreatefollow) | **POST** /v1/follows | 
[**followServiceDeleteFollow**](FollowServiceApi.md#followservicedeletefollow) | **DELETE** /v1/follows/fan/{fan_uuid}/influencer/{influencer_uuid} | 
[**followServiceGetFollowerNumByInfluencerUUID**](FollowServiceApi.md#followservicegetfollowernumbyinfluenceruuid) | **GET** /v1/follows/influencer/{influencer_uuid}/follower_num | 
[**followServiceListFollowsByFanUUID**](FollowServiceApi.md#followservicelistfollowsbyfanuuid) | **GET** /v1/follows | 
[**followServiceListUnFollowsByFanUUID**](FollowServiceApi.md#followservicelistunfollowsbyfanuuid) | **GET** /v1/unfollows | 


# **followServiceCreateFollow**
> GrpcEmpty followServiceCreateFollow(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FollowServiceApi();
final body = GrpcCreateFollowRequest(); // GrpcCreateFollowRequest | 

try { 
    final result = api_instance.followServiceCreateFollow(body);
    print(result);
} catch (e) {
    print('Exception when calling FollowServiceApi->followServiceCreateFollow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcCreateFollowRequest**](GrpcCreateFollowRequest.md)|  | 

### Return type

[**GrpcEmpty**](GrpcEmpty.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **followServiceDeleteFollow**
> GrpcEmpty followServiceDeleteFollow(fanUuid, influencerUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FollowServiceApi();
final fanUuid = fanUuid_example; // String | 
final influencerUuid = influencerUuid_example; // String | 

try { 
    final result = api_instance.followServiceDeleteFollow(fanUuid, influencerUuid);
    print(result);
} catch (e) {
    print('Exception when calling FollowServiceApi->followServiceDeleteFollow: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fanUuid** | **String**|  | 
 **influencerUuid** | **String**|  | 

### Return type

[**GrpcEmpty**](GrpcEmpty.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **followServiceGetFollowerNumByInfluencerUUID**
> GrpcGetFollowerNumByInfluencerUUIDResponse followServiceGetFollowerNumByInfluencerUUID(influencerUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FollowServiceApi();
final influencerUuid = influencerUuid_example; // String | 

try { 
    final result = api_instance.followServiceGetFollowerNumByInfluencerUUID(influencerUuid);
    print(result);
} catch (e) {
    print('Exception when calling FollowServiceApi->followServiceGetFollowerNumByInfluencerUUID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **influencerUuid** | **String**|  | 

### Return type

[**GrpcGetFollowerNumByInfluencerUUIDResponse**](GrpcGetFollowerNumByInfluencerUUIDResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **followServiceListFollowsByFanUUID**
> GrpcListFollowsByFanUUIDResponse followServiceListFollowsByFanUUID(pageSize, pageToken, fanUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FollowServiceApi();
final pageSize = 789; // int | 
final pageToken = pageToken_example; // String | 
final fanUuid = fanUuid_example; // String | 

try { 
    final result = api_instance.followServiceListFollowsByFanUUID(pageSize, pageToken, fanUuid);
    print(result);
} catch (e) {
    print('Exception when calling FollowServiceApi->followServiceListFollowsByFanUUID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**|  | [optional] 
 **pageToken** | **String**|  | [optional] 
 **fanUuid** | **String**|  | [optional] 

### Return type

[**GrpcListFollowsByFanUUIDResponse**](GrpcListFollowsByFanUUIDResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **followServiceListUnFollowsByFanUUID**
> GrpcListUnFollowsByFanUUIDResponse followServiceListUnFollowsByFanUUID(pageToken, fanUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = FollowServiceApi();
final pageToken = pageToken_example; // String | 
final fanUuid = fanUuid_example; // String | 

try { 
    final result = api_instance.followServiceListUnFollowsByFanUUID(pageToken, fanUuid);
    print(result);
} catch (e) {
    print('Exception when calling FollowServiceApi->followServiceListUnFollowsByFanUUID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageToken** | **String**|  | [optional] 
 **fanUuid** | **String**|  | [optional] 

### Return type

[**GrpcListUnFollowsByFanUUIDResponse**](GrpcListUnFollowsByFanUUIDResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

