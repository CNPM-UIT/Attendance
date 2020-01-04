# IO.Swagger.Api.TestsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiTestsGet**](TestsApi.md#apitestsget) | **GET** /api/Tests | 
[**ApiTestsIdDelete**](TestsApi.md#apitestsiddelete) | **DELETE** /api/Tests/{id} | 
[**ApiTestsIdGet**](TestsApi.md#apitestsidget) | **GET** /api/Tests/{id} | 
[**ApiTestsIdPut**](TestsApi.md#apitestsidput) | **PUT** /api/Tests/{id} | 
[**ApiTestsOfLessionLessionIdGet**](TestsApi.md#apitestsoflessionlessionidget) | **GET** /api/Tests/OfLession/{lessionId} | 
[**ApiTestsPost**](TestsApi.md#apitestspost) | **POST** /api/Tests | 

<a name="apitestsget"></a>
# **ApiTestsGet**
> List<TestDTO> ApiTestsGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiTestsGetExample
    {
        public void main()
        {
            var apiInstance = new TestsApi();

            try
            {
                List&lt;TestDTO&gt; result = apiInstance.ApiTestsGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling TestsApi.ApiTestsGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<TestDTO>**](TestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apitestsiddelete"></a>
# **ApiTestsIdDelete**
> TestDTO ApiTestsIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiTestsIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new TestsApi();
            var id = 56;  // int? | 

            try
            {
                TestDTO result = apiInstance.ApiTestsIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling TestsApi.ApiTestsIdDelete: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 

### Return type

[**TestDTO**](TestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apitestsidget"></a>
# **ApiTestsIdGet**
> TestDTO ApiTestsIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiTestsIdGetExample
    {
        public void main()
        {
            var apiInstance = new TestsApi();
            var id = 56;  // int? | 

            try
            {
                TestDTO result = apiInstance.ApiTestsIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling TestsApi.ApiTestsIdGet: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 

### Return type

[**TestDTO**](TestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apitestsidput"></a>
# **ApiTestsIdPut**
> void ApiTestsIdPut (int? id, TestDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiTestsIdPutExample
    {
        public void main()
        {
            var apiInstance = new TestsApi();
            var id = 56;  // int? | 
            var body = new TestDTO(); // TestDTO |  (optional) 

            try
            {
                apiInstance.ApiTestsIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling TestsApi.ApiTestsIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**TestDTO**](TestDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apitestsoflessionlessionidget"></a>
# **ApiTestsOfLessionLessionIdGet**
> List<TestDTO> ApiTestsOfLessionLessionIdGet (int? lessionId)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiTestsOfLessionLessionIdGetExample
    {
        public void main()
        {
            var apiInstance = new TestsApi();
            var lessionId = 56;  // int? | 

            try
            {
                List&lt;TestDTO&gt; result = apiInstance.ApiTestsOfLessionLessionIdGet(lessionId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling TestsApi.ApiTestsOfLessionLessionIdGet: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lessionId** | **int?**|  | 

### Return type

[**List<TestDTO>**](TestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apitestspost"></a>
# **ApiTestsPost**
> TestDTO ApiTestsPost (TestDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiTestsPostExample
    {
        public void main()
        {
            var apiInstance = new TestsApi();
            var body = new TestDTO(); // TestDTO |  (optional) 

            try
            {
                TestDTO result = apiInstance.ApiTestsPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling TestsApi.ApiTestsPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TestDTO**](TestDTO.md)|  | [optional] 

### Return type

[**TestDTO**](TestDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
