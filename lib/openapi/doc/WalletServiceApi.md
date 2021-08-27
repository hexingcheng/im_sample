# openapi.api.WalletServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev-api.only-live.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**walletServiceAppleIapVerification**](WalletServiceApi.md#walletserviceappleiapverification) | **POST** /v1/verification/refill | 
[**walletServiceConsumeBalance**](WalletServiceApi.md#walletserviceconsumebalance) | **PUT** /v1/wallet/consume | 
[**walletServiceGetBalanceByFanUUID**](WalletServiceApi.md#walletservicegetbalancebyfanuuid) | **GET** /v1/wallet/fans/{fan_uuid} | 
[**walletServiceGetBillingByMonth**](WalletServiceApi.md#walletservicegetbillingbymonth) | **GET** /v1/billing/fans/{fan_uuid} | 


# **walletServiceAppleIapVerification**
> GrpcWallet walletServiceAppleIapVerification(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = WalletServiceApi();
final body = GrpcAppleIapVerificationRequest(); // GrpcAppleIapVerificationRequest | 

try { 
    final result = api_instance.walletServiceAppleIapVerification(body);
    print(result);
} catch (e) {
    print('Exception when calling WalletServiceApi->walletServiceAppleIapVerification: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcAppleIapVerificationRequest**](GrpcAppleIapVerificationRequest.md)|  | 

### Return type

[**GrpcWallet**](GrpcWallet.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletServiceConsumeBalance**
> GrpcConsumeBalanceResponse walletServiceConsumeBalance(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = WalletServiceApi();
final body = GrpcConsumeBalanceRequest(); // GrpcConsumeBalanceRequest | 

try { 
    final result = api_instance.walletServiceConsumeBalance(body);
    print(result);
} catch (e) {
    print('Exception when calling WalletServiceApi->walletServiceConsumeBalance: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcConsumeBalanceRequest**](GrpcConsumeBalanceRequest.md)|  | 

### Return type

[**GrpcConsumeBalanceResponse**](GrpcConsumeBalanceResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletServiceGetBalanceByFanUUID**
> GrpcWallet walletServiceGetBalanceByFanUUID(fanUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = WalletServiceApi();
final fanUuid = fanUuid_example; // String | 

try { 
    final result = api_instance.walletServiceGetBalanceByFanUUID(fanUuid);
    print(result);
} catch (e) {
    print('Exception when calling WalletServiceApi->walletServiceGetBalanceByFanUUID: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fanUuid** | **String**|  | 

### Return type

[**GrpcWallet**](GrpcWallet.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **walletServiceGetBillingByMonth**
> GrpcGetBillingByMonthRes walletServiceGetBillingByMonth(fanUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = WalletServiceApi();
final fanUuid = fanUuid_example; // String | 

try { 
    final result = api_instance.walletServiceGetBillingByMonth(fanUuid);
    print(result);
} catch (e) {
    print('Exception when calling WalletServiceApi->walletServiceGetBillingByMonth: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fanUuid** | **String**|  | 

### Return type

[**GrpcGetBillingByMonthRes**](GrpcGetBillingByMonthRes.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

