# openapi.api.AuthServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev-api.only-live.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authServiceFanRefreshToken**](AuthServiceApi.md#authservicefanrefreshtoken) | **POST** /v1/fans/refresh/token | 
[**authServiceFanSignIn**](AuthServiceApi.md#authservicefansignin) | **POST** /v1/fans/signin | 
[**authServiceFanSignUp**](AuthServiceApi.md#authservicefansignup) | **POST** /v1/fans/signup | 
[**authServiceInfluencerRefreshToken**](AuthServiceApi.md#authserviceinfluencerrefreshtoken) | **POST** /v1/influencers/refresh/token | 
[**authServiceInfluencerSignIn**](AuthServiceApi.md#authserviceinfluencersignin) | **POST** /v1/influencers/signin | 


# **authServiceFanRefreshToken**
> GrpcFanRefreshTokenResponse authServiceFanRefreshToken(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = AuthServiceApi();
final body = GrpcFanRefreshTokenRequest(); // GrpcFanRefreshTokenRequest | 

try { 
    final result = api_instance.authServiceFanRefreshToken(body);
    print(result);
} catch (e) {
    print('Exception when calling AuthServiceApi->authServiceFanRefreshToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcFanRefreshTokenRequest**](GrpcFanRefreshTokenRequest.md)|  | 

### Return type

[**GrpcFanRefreshTokenResponse**](GrpcFanRefreshTokenResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authServiceFanSignIn**
> GrpcFanSignInResponse authServiceFanSignIn(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: x-platform
//defaultApiClient.getAuthentication<HttpBasicAuth>('x-platform').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('x-platform').password = 'YOUR_PASSWORD';

final api_instance = AuthServiceApi();
final body = GrpcFanSignInRequest(); // GrpcFanSignInRequest | 

try { 
    final result = api_instance.authServiceFanSignIn(body);
    print(result);
} catch (e) {
    print('Exception when calling AuthServiceApi->authServiceFanSignIn: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcFanSignInRequest**](GrpcFanSignInRequest.md)|  | 

### Return type

[**GrpcFanSignInResponse**](GrpcFanSignInResponse.md)

### Authorization

[x-platform](../README.md#x-platform)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authServiceFanSignUp**
> GrpcFanSignUpResponse authServiceFanSignUp(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = AuthServiceApi();
final body = GrpcFanSignUpRequest(); // GrpcFanSignUpRequest | 

try { 
    final result = api_instance.authServiceFanSignUp(body);
    print(result);
} catch (e) {
    print('Exception when calling AuthServiceApi->authServiceFanSignUp: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcFanSignUpRequest**](GrpcFanSignUpRequest.md)|  | 

### Return type

[**GrpcFanSignUpResponse**](GrpcFanSignUpResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authServiceInfluencerRefreshToken**
> GrpcInfluencerRefreshTokenResponse authServiceInfluencerRefreshToken(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = AuthServiceApi();
final body = GrpcInfluencerRefreshTokenRequest(); // GrpcInfluencerRefreshTokenRequest | 

try { 
    final result = api_instance.authServiceInfluencerRefreshToken(body);
    print(result);
} catch (e) {
    print('Exception when calling AuthServiceApi->authServiceInfluencerRefreshToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcInfluencerRefreshTokenRequest**](GrpcInfluencerRefreshTokenRequest.md)|  | 

### Return type

[**GrpcInfluencerRefreshTokenResponse**](GrpcInfluencerRefreshTokenResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authServiceInfluencerSignIn**
> GrpcInfluencerSignInResponse authServiceInfluencerSignIn(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = AuthServiceApi();
final body = GrpcInfluencerSignInRequest(); // GrpcInfluencerSignInRequest | 

try { 
    final result = api_instance.authServiceInfluencerSignIn(body);
    print(result);
} catch (e) {
    print('Exception when calling AuthServiceApi->authServiceInfluencerSignIn: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcInfluencerSignInRequest**](GrpcInfluencerSignInRequest.md)|  | 

### Return type

[**GrpcInfluencerSignInResponse**](GrpcInfluencerSignInResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

