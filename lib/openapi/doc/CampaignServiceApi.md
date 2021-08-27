# openapi.api.CampaignServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev-api.only-live.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**campaignServiceConsumeSerialCode**](CampaignServiceApi.md#campaignserviceconsumeserialcode) | **PUT** /v1/serial_codes/{serial_code} | 
[**campaignServiceListCampaignByFan**](CampaignServiceApi.md#campaignservicelistcampaignbyfan) | **GET** /v1/fans/{fan_uuid}/campaigns | 
[**campaignServiceListCampaignByInfluencer**](CampaignServiceApi.md#campaignservicelistcampaignbyinfluencer) | **GET** /v1/influencers/{influencer_uuid}/campaigns | 


# **campaignServiceConsumeSerialCode**
> Object campaignServiceConsumeSerialCode(serialCode, body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = CampaignServiceApi();
final serialCode = serialCode_example; // String | 
final body = GrpcConsumeSerialCodeRequest(); // GrpcConsumeSerialCodeRequest | 

try { 
    final result = api_instance.campaignServiceConsumeSerialCode(serialCode, body);
    print(result);
} catch (e) {
    print('Exception when calling CampaignServiceApi->campaignServiceConsumeSerialCode: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **serialCode** | **String**|  | 
 **body** | [**GrpcConsumeSerialCodeRequest**](GrpcConsumeSerialCodeRequest.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **campaignServiceListCampaignByFan**
> GrpcListCampaignByFanResponse campaignServiceListCampaignByFan(fanUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = CampaignServiceApi();
final fanUuid = fanUuid_example; // String | 

try { 
    final result = api_instance.campaignServiceListCampaignByFan(fanUuid);
    print(result);
} catch (e) {
    print('Exception when calling CampaignServiceApi->campaignServiceListCampaignByFan: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fanUuid** | **String**|  | 

### Return type

[**GrpcListCampaignByFanResponse**](GrpcListCampaignByFanResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **campaignServiceListCampaignByInfluencer**
> GrpcListCampaignByInfluencerResponse campaignServiceListCampaignByInfluencer(influencerUuid)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = CampaignServiceApi();
final influencerUuid = influencerUuid_example; // String | 

try { 
    final result = api_instance.campaignServiceListCampaignByInfluencer(influencerUuid);
    print(result);
} catch (e) {
    print('Exception when calling CampaignServiceApi->campaignServiceListCampaignByInfluencer: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **influencerUuid** | **String**|  | 

### Return type

[**GrpcListCampaignByInfluencerResponse**](GrpcListCampaignByInfluencerResponse.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

