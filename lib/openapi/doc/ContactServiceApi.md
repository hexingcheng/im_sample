# openapi.api.ContactServiceApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://dev-api.only-live.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contactServiceCreateContactReport**](ContactServiceApi.md#contactservicecreatecontactreport) | **POST** /v1/contacts/reports | 


# **contactServiceCreateContactReport**
> Object contactServiceCreateContactReport(body)



### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: x-api-jwt
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('x-api-jwt').apiKeyPrefix = 'Bearer';

final api_instance = ContactServiceApi();
final body = GrpcCreateContactReportRequest(); // GrpcCreateContactReportRequest | 

try { 
    final result = api_instance.contactServiceCreateContactReport(body);
    print(result);
} catch (e) {
    print('Exception when calling ContactServiceApi->contactServiceCreateContactReport: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GrpcCreateContactReportRequest**](GrpcCreateContactReportRequest.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

[x-api-jwt](../README.md#x-api-jwt)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

