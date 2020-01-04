# IO.Swagger.Api.CoursesApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiCoursesGet**](CoursesApi.md#apicoursesget) | **GET** /api/Courses | 
[**ApiCoursesIdDelete**](CoursesApi.md#apicoursesiddelete) | **DELETE** /api/Courses/{id} | 
[**ApiCoursesIdGet**](CoursesApi.md#apicoursesidget) | **GET** /api/Courses/{id} | 
[**ApiCoursesIdPut**](CoursesApi.md#apicoursesidput) | **PUT** /api/Courses/{id} | 
[**ApiCoursesOfLecturerLecturerIdGet**](CoursesApi.md#apicoursesoflecturerlectureridget) | **GET** /api/Courses/OfLecturer/{lecturerId} | 
[**ApiCoursesOfSemesterSemesterIdGet**](CoursesApi.md#apicoursesofsemestersemesteridget) | **GET** /api/Courses/OfSemester/{semesterId} | 
[**ApiCoursesOfStudentStudentIdGet**](CoursesApi.md#apicoursesofstudentstudentidget) | **GET** /api/Courses/OfStudent/{studentId} | 
[**ApiCoursesPost**](CoursesApi.md#apicoursespost) | **POST** /api/Courses | 

<a name="apicoursesget"></a>
# **ApiCoursesGet**
> List<CourseDTO> ApiCoursesGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCoursesGetExample
    {
        public void main()
        {
            var apiInstance = new CoursesApi();

            try
            {
                List&lt;CourseDTO&gt; result = apiInstance.ApiCoursesGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CoursesApi.ApiCoursesGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CourseDTO>**](CourseDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apicoursesiddelete"></a>
# **ApiCoursesIdDelete**
> CourseDTO ApiCoursesIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCoursesIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new CoursesApi();
            var id = 56;  // int? | 

            try
            {
                CourseDTO result = apiInstance.ApiCoursesIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CoursesApi.ApiCoursesIdDelete: " + e.Message );
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

[**CourseDTO**](CourseDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apicoursesidget"></a>
# **ApiCoursesIdGet**
> CourseDTO ApiCoursesIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCoursesIdGetExample
    {
        public void main()
        {
            var apiInstance = new CoursesApi();
            var id = 56;  // int? | 

            try
            {
                CourseDTO result = apiInstance.ApiCoursesIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CoursesApi.ApiCoursesIdGet: " + e.Message );
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

[**CourseDTO**](CourseDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apicoursesidput"></a>
# **ApiCoursesIdPut**
> void ApiCoursesIdPut (int? id, CourseDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCoursesIdPutExample
    {
        public void main()
        {
            var apiInstance = new CoursesApi();
            var id = 56;  // int? | 
            var body = new CourseDTO(); // CourseDTO |  (optional) 

            try
            {
                apiInstance.ApiCoursesIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CoursesApi.ApiCoursesIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**CourseDTO**](CourseDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apicoursesoflecturerlectureridget"></a>
# **ApiCoursesOfLecturerLecturerIdGet**
> List<CourseDTO> ApiCoursesOfLecturerLecturerIdGet (int? lecturerId)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCoursesOfLecturerLecturerIdGetExample
    {
        public void main()
        {
            var apiInstance = new CoursesApi();
            var lecturerId = 56;  // int? | 

            try
            {
                List&lt;CourseDTO&gt; result = apiInstance.ApiCoursesOfLecturerLecturerIdGet(lecturerId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CoursesApi.ApiCoursesOfLecturerLecturerIdGet: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lecturerId** | **int?**|  | 

### Return type

[**List<CourseDTO>**](CourseDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apicoursesofsemestersemesteridget"></a>
# **ApiCoursesOfSemesterSemesterIdGet**
> List<CourseDTO> ApiCoursesOfSemesterSemesterIdGet (int? semesterId)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCoursesOfSemesterSemesterIdGetExample
    {
        public void main()
        {
            var apiInstance = new CoursesApi();
            var semesterId = 56;  // int? | 

            try
            {
                List&lt;CourseDTO&gt; result = apiInstance.ApiCoursesOfSemesterSemesterIdGet(semesterId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CoursesApi.ApiCoursesOfSemesterSemesterIdGet: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **semesterId** | **int?**|  | 

### Return type

[**List<CourseDTO>**](CourseDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apicoursesofstudentstudentidget"></a>
# **ApiCoursesOfStudentStudentIdGet**
> List<CourseDTO> ApiCoursesOfStudentStudentIdGet (int? studentId)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCoursesOfStudentStudentIdGetExample
    {
        public void main()
        {
            var apiInstance = new CoursesApi();
            var studentId = 56;  // int? | 

            try
            {
                List&lt;CourseDTO&gt; result = apiInstance.ApiCoursesOfStudentStudentIdGet(studentId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CoursesApi.ApiCoursesOfStudentStudentIdGet: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studentId** | **int?**|  | 

### Return type

[**List<CourseDTO>**](CourseDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apicoursespost"></a>
# **ApiCoursesPost**
> CourseDTO ApiCoursesPost (CourseDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCoursesPostExample
    {
        public void main()
        {
            var apiInstance = new CoursesApi();
            var body = new CourseDTO(); // CourseDTO |  (optional) 

            try
            {
                CourseDTO result = apiInstance.ApiCoursesPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CoursesApi.ApiCoursesPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CourseDTO**](CourseDTO.md)|  | [optional] 

### Return type

[**CourseDTO**](CourseDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
