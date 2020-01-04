# IO.Swagger.Api.LessionsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiLessionsGet**](LessionsApi.md#apilessionsget) | **GET** /api/Lessions | 
[**ApiLessionsIdDelete**](LessionsApi.md#apilessionsiddelete) | **DELETE** /api/Lessions/{id} | 
[**ApiLessionsIdGet**](LessionsApi.md#apilessionsidget) | **GET** /api/Lessions/{id} | 
[**ApiLessionsIdPut**](LessionsApi.md#apilessionsidput) | **PUT** /api/Lessions/{id} | 
[**ApiLessionsOfCourseCourseIdGet**](LessionsApi.md#apilessionsofcoursecourseidget) | **GET** /api/Lessions/OfCourse/{courseId} | 
[**ApiLessionsPost**](LessionsApi.md#apilessionspost) | **POST** /api/Lessions | 

<a name="apilessionsget"></a>
# **ApiLessionsGet**
> List<LessionDTO> ApiLessionsGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiLessionsGetExample
    {
        public void main()
        {
            var apiInstance = new LessionsApi();

            try
            {
                List&lt;LessionDTO&gt; result = apiInstance.ApiLessionsGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LessionsApi.ApiLessionsGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<LessionDTO>**](LessionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apilessionsiddelete"></a>
# **ApiLessionsIdDelete**
> LessionDTO ApiLessionsIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiLessionsIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new LessionsApi();
            var id = 56;  // int? | 

            try
            {
                LessionDTO result = apiInstance.ApiLessionsIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LessionsApi.ApiLessionsIdDelete: " + e.Message );
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

[**LessionDTO**](LessionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apilessionsidget"></a>
# **ApiLessionsIdGet**
> LessionDTO ApiLessionsIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiLessionsIdGetExample
    {
        public void main()
        {
            var apiInstance = new LessionsApi();
            var id = 56;  // int? | 

            try
            {
                LessionDTO result = apiInstance.ApiLessionsIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LessionsApi.ApiLessionsIdGet: " + e.Message );
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

[**LessionDTO**](LessionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apilessionsidput"></a>
# **ApiLessionsIdPut**
> void ApiLessionsIdPut (int? id, LessionDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiLessionsIdPutExample
    {
        public void main()
        {
            var apiInstance = new LessionsApi();
            var id = 56;  // int? | 
            var body = new LessionDTO(); // LessionDTO |  (optional) 

            try
            {
                apiInstance.ApiLessionsIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LessionsApi.ApiLessionsIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**LessionDTO**](LessionDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apilessionsofcoursecourseidget"></a>
# **ApiLessionsOfCourseCourseIdGet**
> List<LessionDTO> ApiLessionsOfCourseCourseIdGet (int? courseId)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiLessionsOfCourseCourseIdGetExample
    {
        public void main()
        {
            var apiInstance = new LessionsApi();
            var courseId = 56;  // int? | 

            try
            {
                List&lt;LessionDTO&gt; result = apiInstance.ApiLessionsOfCourseCourseIdGet(courseId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LessionsApi.ApiLessionsOfCourseCourseIdGet: " + e.Message );
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

[**List<LessionDTO>**](LessionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apilessionspost"></a>
# **ApiLessionsPost**
> LessionDTO ApiLessionsPost (LessionDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiLessionsPostExample
    {
        public void main()
        {
            var apiInstance = new LessionsApi();
            var body = new LessionDTO(); // LessionDTO |  (optional) 

            try
            {
                LessionDTO result = apiInstance.ApiLessionsPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LessionsApi.ApiLessionsPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LessionDTO**](LessionDTO.md)|  | [optional] 

### Return type

[**LessionDTO**](LessionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
