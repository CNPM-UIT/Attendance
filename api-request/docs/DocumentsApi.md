# IO.Swagger.Api.DocumentsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiDocumentsGet**](DocumentsApi.md#apidocumentsget) | **GET** /api/Documents | 
[**ApiDocumentsIdDelete**](DocumentsApi.md#apidocumentsiddelete) | **DELETE** /api/Documents/{id} | 
[**ApiDocumentsIdGet**](DocumentsApi.md#apidocumentsidget) | **GET** /api/Documents/{id} | 
[**ApiDocumentsIdPut**](DocumentsApi.md#apidocumentsidput) | **PUT** /api/Documents/{id} | 
[**ApiDocumentsOfCourseCourseIdGet**](DocumentsApi.md#apidocumentsofcoursecourseidget) | **GET** /api/Documents/OfCourse/{courseId} | 
[**ApiDocumentsPost**](DocumentsApi.md#apidocumentspost) | **POST** /api/Documents | 

<a name="apidocumentsget"></a>
# **ApiDocumentsGet**
> List<DocumentDTO> ApiDocumentsGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiDocumentsGetExample
    {
        public void main()
        {
            var apiInstance = new DocumentsApi();

            try
            {
                List&lt;DocumentDTO&gt; result = apiInstance.ApiDocumentsGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DocumentsApi.ApiDocumentsGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DocumentDTO>**](DocumentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apidocumentsiddelete"></a>
# **ApiDocumentsIdDelete**
> DocumentDTO ApiDocumentsIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiDocumentsIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new DocumentsApi();
            var id = 56;  // int? | 

            try
            {
                DocumentDTO result = apiInstance.ApiDocumentsIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DocumentsApi.ApiDocumentsIdDelete: " + e.Message );
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

[**DocumentDTO**](DocumentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apidocumentsidget"></a>
# **ApiDocumentsIdGet**
> DocumentDTO ApiDocumentsIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiDocumentsIdGetExample
    {
        public void main()
        {
            var apiInstance = new DocumentsApi();
            var id = 56;  // int? | 

            try
            {
                DocumentDTO result = apiInstance.ApiDocumentsIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DocumentsApi.ApiDocumentsIdGet: " + e.Message );
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

[**DocumentDTO**](DocumentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apidocumentsidput"></a>
# **ApiDocumentsIdPut**
> void ApiDocumentsIdPut (int? id, DocumentDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiDocumentsIdPutExample
    {
        public void main()
        {
            var apiInstance = new DocumentsApi();
            var id = 56;  // int? | 
            var body = new DocumentDTO(); // DocumentDTO |  (optional) 

            try
            {
                apiInstance.ApiDocumentsIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DocumentsApi.ApiDocumentsIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**DocumentDTO**](DocumentDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apidocumentsofcoursecourseidget"></a>
# **ApiDocumentsOfCourseCourseIdGet**
> List<DocumentDTO> ApiDocumentsOfCourseCourseIdGet (int? courseId)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiDocumentsOfCourseCourseIdGetExample
    {
        public void main()
        {
            var apiInstance = new DocumentsApi();
            var courseId = 56;  // int? | 

            try
            {
                List&lt;DocumentDTO&gt; result = apiInstance.ApiDocumentsOfCourseCourseIdGet(courseId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DocumentsApi.ApiDocumentsOfCourseCourseIdGet: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **courseId** | **int?**|  | 

### Return type

[**List<DocumentDTO>**](DocumentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apidocumentspost"></a>
# **ApiDocumentsPost**
> DocumentDTO ApiDocumentsPost (DocumentDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiDocumentsPostExample
    {
        public void main()
        {
            var apiInstance = new DocumentsApi();
            var body = new DocumentDTO(); // DocumentDTO |  (optional) 

            try
            {
                DocumentDTO result = apiInstance.ApiDocumentsPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DocumentsApi.ApiDocumentsPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DocumentDTO**](DocumentDTO.md)|  | [optional] 

### Return type

[**DocumentDTO**](DocumentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
