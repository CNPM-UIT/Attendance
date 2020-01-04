# IO.Swagger.Api.ReportsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiReportsGet**](ReportsApi.md#apireportsget) | **GET** /api/Reports | 
[**ApiReportsIdDelete**](ReportsApi.md#apireportsiddelete) | **DELETE** /api/Reports/{id} | 
[**ApiReportsIdGet**](ReportsApi.md#apireportsidget) | **GET** /api/Reports/{id} | 
[**ApiReportsIdPut**](ReportsApi.md#apireportsidput) | **PUT** /api/Reports/{id} | 
[**ApiReportsPost**](ReportsApi.md#apireportspost) | **POST** /api/Reports | 

<a name="apireportsget"></a>
# **ApiReportsGet**
> List<ReportDTO> ApiReportsGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiReportsGetExample
    {
        public void main()
        {
            var apiInstance = new ReportsApi();

            try
            {
                List&lt;ReportDTO&gt; result = apiInstance.ApiReportsGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ReportsApi.ApiReportsGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ReportDTO>**](ReportDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apireportsiddelete"></a>
# **ApiReportsIdDelete**
> ReportDTO ApiReportsIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiReportsIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new ReportsApi();
            var id = 56;  // int? | 

            try
            {
                ReportDTO result = apiInstance.ApiReportsIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ReportsApi.ApiReportsIdDelete: " + e.Message );
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

[**ReportDTO**](ReportDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apireportsidget"></a>
# **ApiReportsIdGet**
> ReportDTO ApiReportsIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiReportsIdGetExample
    {
        public void main()
        {
            var apiInstance = new ReportsApi();
            var id = 56;  // int? | 

            try
            {
                ReportDTO result = apiInstance.ApiReportsIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ReportsApi.ApiReportsIdGet: " + e.Message );
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

[**ReportDTO**](ReportDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apireportsidput"></a>
# **ApiReportsIdPut**
> void ApiReportsIdPut (int? id, ReportDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiReportsIdPutExample
    {
        public void main()
        {
            var apiInstance = new ReportsApi();
            var id = 56;  // int? | 
            var body = new ReportDTO(); // ReportDTO |  (optional) 

            try
            {
                apiInstance.ApiReportsIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ReportsApi.ApiReportsIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**ReportDTO**](ReportDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apireportspost"></a>
# **ApiReportsPost**
> ReportDTO ApiReportsPost (ReportDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiReportsPostExample
    {
        public void main()
        {
            var apiInstance = new ReportsApi();
            var body = new ReportDTO(); // ReportDTO |  (optional) 

            try
            {
                ReportDTO result = apiInstance.ApiReportsPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling ReportsApi.ApiReportsPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ReportDTO**](ReportDTO.md)|  | [optional] 

### Return type

[**ReportDTO**](ReportDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
