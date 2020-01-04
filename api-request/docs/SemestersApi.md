# IO.Swagger.Api.SemestersApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiSemestersGet**](SemestersApi.md#apisemestersget) | **GET** /api/Semesters | 
[**ApiSemestersIdDelete**](SemestersApi.md#apisemestersiddelete) | **DELETE** /api/Semesters/{id} | 
[**ApiSemestersIdGet**](SemestersApi.md#apisemestersidget) | **GET** /api/Semesters/{id} | 
[**ApiSemestersIdPut**](SemestersApi.md#apisemestersidput) | **PUT** /api/Semesters/{id} | 
[**ApiSemestersPost**](SemestersApi.md#apisemesterspost) | **POST** /api/Semesters | 

<a name="apisemestersget"></a>
# **ApiSemestersGet**
> List<SemesterDTO> ApiSemestersGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiSemestersGetExample
    {
        public void main()
        {
            var apiInstance = new SemestersApi();

            try
            {
                List&lt;SemesterDTO&gt; result = apiInstance.ApiSemestersGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SemestersApi.ApiSemestersGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SemesterDTO>**](SemesterDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apisemestersiddelete"></a>
# **ApiSemestersIdDelete**
> SemesterDTO ApiSemestersIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiSemestersIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new SemestersApi();
            var id = 56;  // int? | 

            try
            {
                SemesterDTO result = apiInstance.ApiSemestersIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SemestersApi.ApiSemestersIdDelete: " + e.Message );
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

[**SemesterDTO**](SemesterDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apisemestersidget"></a>
# **ApiSemestersIdGet**
> SemesterDTO ApiSemestersIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiSemestersIdGetExample
    {
        public void main()
        {
            var apiInstance = new SemestersApi();
            var id = 56;  // int? | 

            try
            {
                SemesterDTO result = apiInstance.ApiSemestersIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SemestersApi.ApiSemestersIdGet: " + e.Message );
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

[**SemesterDTO**](SemesterDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apisemestersidput"></a>
# **ApiSemestersIdPut**
> void ApiSemestersIdPut (int? id, SemesterDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiSemestersIdPutExample
    {
        public void main()
        {
            var apiInstance = new SemestersApi();
            var id = 56;  // int? | 
            var body = new SemesterDTO(); // SemesterDTO |  (optional) 

            try
            {
                apiInstance.ApiSemestersIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SemestersApi.ApiSemestersIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**SemesterDTO**](SemesterDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apisemesterspost"></a>
# **ApiSemestersPost**
> SemesterDTO ApiSemestersPost (SemesterDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiSemestersPostExample
    {
        public void main()
        {
            var apiInstance = new SemestersApi();
            var body = new SemesterDTO(); // SemesterDTO |  (optional) 

            try
            {
                SemesterDTO result = apiInstance.ApiSemestersPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SemestersApi.ApiSemestersPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SemesterDTO**](SemesterDTO.md)|  | [optional] 

### Return type

[**SemesterDTO**](SemesterDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
