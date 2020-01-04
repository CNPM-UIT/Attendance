# IO.Swagger.Api.SubmissionsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiSubmissionsGet**](SubmissionsApi.md#apisubmissionsget) | **GET** /api/Submissions | 
[**ApiSubmissionsIdDelete**](SubmissionsApi.md#apisubmissionsiddelete) | **DELETE** /api/Submissions/{id} | 
[**ApiSubmissionsIdGet**](SubmissionsApi.md#apisubmissionsidget) | **GET** /api/Submissions/{id} | 
[**ApiSubmissionsIdPut**](SubmissionsApi.md#apisubmissionsidput) | **PUT** /api/Submissions/{id} | 
[**ApiSubmissionsPost**](SubmissionsApi.md#apisubmissionspost) | **POST** /api/Submissions | 

<a name="apisubmissionsget"></a>
# **ApiSubmissionsGet**
> List<SubmissionDTO> ApiSubmissionsGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiSubmissionsGetExample
    {
        public void main()
        {
            var apiInstance = new SubmissionsApi();

            try
            {
                List&lt;SubmissionDTO&gt; result = apiInstance.ApiSubmissionsGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.ApiSubmissionsGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SubmissionDTO>**](SubmissionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apisubmissionsiddelete"></a>
# **ApiSubmissionsIdDelete**
> SubmissionDTO ApiSubmissionsIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiSubmissionsIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new SubmissionsApi();
            var id = 56;  // int? | 

            try
            {
                SubmissionDTO result = apiInstance.ApiSubmissionsIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.ApiSubmissionsIdDelete: " + e.Message );
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

[**SubmissionDTO**](SubmissionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apisubmissionsidget"></a>
# **ApiSubmissionsIdGet**
> SubmissionDTO ApiSubmissionsIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiSubmissionsIdGetExample
    {
        public void main()
        {
            var apiInstance = new SubmissionsApi();
            var id = 56;  // int? | 

            try
            {
                SubmissionDTO result = apiInstance.ApiSubmissionsIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.ApiSubmissionsIdGet: " + e.Message );
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

[**SubmissionDTO**](SubmissionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apisubmissionsidput"></a>
# **ApiSubmissionsIdPut**
> void ApiSubmissionsIdPut (int? id, SubmissionDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiSubmissionsIdPutExample
    {
        public void main()
        {
            var apiInstance = new SubmissionsApi();
            var id = 56;  // int? | 
            var body = new SubmissionDTO(); // SubmissionDTO |  (optional) 

            try
            {
                apiInstance.ApiSubmissionsIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.ApiSubmissionsIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**SubmissionDTO**](SubmissionDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apisubmissionspost"></a>
# **ApiSubmissionsPost**
> SubmissionDTO ApiSubmissionsPost (SubmissionDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiSubmissionsPostExample
    {
        public void main()
        {
            var apiInstance = new SubmissionsApi();
            var body = new SubmissionDTO(); // SubmissionDTO |  (optional) 

            try
            {
                SubmissionDTO result = apiInstance.ApiSubmissionsPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling SubmissionsApi.ApiSubmissionsPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubmissionDTO**](SubmissionDTO.md)|  | [optional] 

### Return type

[**SubmissionDTO**](SubmissionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
