# IO.Swagger.Api.CourseStudentsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiCourseStudentsGet**](CourseStudentsApi.md#apicoursestudentsget) | **GET** /api/CourseStudents | 
[**ApiCourseStudentsIdDelete**](CourseStudentsApi.md#apicoursestudentsiddelete) | **DELETE** /api/CourseStudents/{id} | 
[**ApiCourseStudentsIdGet**](CourseStudentsApi.md#apicoursestudentsidget) | **GET** /api/CourseStudents/{id} | 
[**ApiCourseStudentsIdPut**](CourseStudentsApi.md#apicoursestudentsidput) | **PUT** /api/CourseStudents/{id} | 
[**ApiCourseStudentsPost**](CourseStudentsApi.md#apicoursestudentspost) | **POST** /api/CourseStudents | 

<a name="apicoursestudentsget"></a>
# **ApiCourseStudentsGet**
> List<CourseStudentDTO> ApiCourseStudentsGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCourseStudentsGetExample
    {
        public void main()
        {
            var apiInstance = new CourseStudentsApi();

            try
            {
                List&lt;CourseStudentDTO&gt; result = apiInstance.ApiCourseStudentsGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CourseStudentsApi.ApiCourseStudentsGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CourseStudentDTO>**](CourseStudentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apicoursestudentsiddelete"></a>
# **ApiCourseStudentsIdDelete**
> CourseStudentDTO ApiCourseStudentsIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCourseStudentsIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new CourseStudentsApi();
            var id = 56;  // int? | 

            try
            {
                CourseStudentDTO result = apiInstance.ApiCourseStudentsIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CourseStudentsApi.ApiCourseStudentsIdDelete: " + e.Message );
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

[**CourseStudentDTO**](CourseStudentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apicoursestudentsidget"></a>
# **ApiCourseStudentsIdGet**
> CourseStudentDTO ApiCourseStudentsIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCourseStudentsIdGetExample
    {
        public void main()
        {
            var apiInstance = new CourseStudentsApi();
            var id = 56;  // int? | 

            try
            {
                CourseStudentDTO result = apiInstance.ApiCourseStudentsIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CourseStudentsApi.ApiCourseStudentsIdGet: " + e.Message );
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

[**CourseStudentDTO**](CourseStudentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apicoursestudentsidput"></a>
# **ApiCourseStudentsIdPut**
> void ApiCourseStudentsIdPut (int? id, CourseStudentDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCourseStudentsIdPutExample
    {
        public void main()
        {
            var apiInstance = new CourseStudentsApi();
            var id = 56;  // int? | 
            var body = new CourseStudentDTO(); // CourseStudentDTO |  (optional) 

            try
            {
                apiInstance.ApiCourseStudentsIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CourseStudentsApi.ApiCourseStudentsIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**CourseStudentDTO**](CourseStudentDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apicoursestudentspost"></a>
# **ApiCourseStudentsPost**
> CourseStudentDTO ApiCourseStudentsPost (CourseStudentDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCourseStudentsPostExample
    {
        public void main()
        {
            var apiInstance = new CourseStudentsApi();
            var body = new CourseStudentDTO(); // CourseStudentDTO |  (optional) 

            try
            {
                CourseStudentDTO result = apiInstance.ApiCourseStudentsPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CourseStudentsApi.ApiCourseStudentsPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CourseStudentDTO**](CourseStudentDTO.md)|  | [optional] 

### Return type

[**CourseStudentDTO**](CourseStudentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
