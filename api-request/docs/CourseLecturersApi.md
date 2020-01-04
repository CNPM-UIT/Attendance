# IO.Swagger.Api.CourseLecturersApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiCourseLecturersGet**](CourseLecturersApi.md#apicourselecturersget) | **GET** /api/CourseLecturers | 
[**ApiCourseLecturersIdDelete**](CourseLecturersApi.md#apicourselecturersiddelete) | **DELETE** /api/CourseLecturers/{id} | 
[**ApiCourseLecturersIdGet**](CourseLecturersApi.md#apicourselecturersidget) | **GET** /api/CourseLecturers/{id} | 
[**ApiCourseLecturersIdPut**](CourseLecturersApi.md#apicourselecturersidput) | **PUT** /api/CourseLecturers/{id} | 
[**ApiCourseLecturersPost**](CourseLecturersApi.md#apicourselecturerspost) | **POST** /api/CourseLecturers | 

<a name="apicourselecturersget"></a>
# **ApiCourseLecturersGet**
> List<CourseLecturerDTO> ApiCourseLecturersGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCourseLecturersGetExample
    {
        public void main()
        {
            var apiInstance = new CourseLecturersApi();

            try
            {
                List&lt;CourseLecturerDTO&gt; result = apiInstance.ApiCourseLecturersGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CourseLecturersApi.ApiCourseLecturersGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CourseLecturerDTO>**](CourseLecturerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apicourselecturersiddelete"></a>
# **ApiCourseLecturersIdDelete**
> CourseLecturerDTO ApiCourseLecturersIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCourseLecturersIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new CourseLecturersApi();
            var id = 56;  // int? | 

            try
            {
                CourseLecturerDTO result = apiInstance.ApiCourseLecturersIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CourseLecturersApi.ApiCourseLecturersIdDelete: " + e.Message );
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

[**CourseLecturerDTO**](CourseLecturerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apicourselecturersidget"></a>
# **ApiCourseLecturersIdGet**
> CourseLecturerDTO ApiCourseLecturersIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCourseLecturersIdGetExample
    {
        public void main()
        {
            var apiInstance = new CourseLecturersApi();
            var id = 56;  // int? | 

            try
            {
                CourseLecturerDTO result = apiInstance.ApiCourseLecturersIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CourseLecturersApi.ApiCourseLecturersIdGet: " + e.Message );
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

[**CourseLecturerDTO**](CourseLecturerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apicourselecturersidput"></a>
# **ApiCourseLecturersIdPut**
> void ApiCourseLecturersIdPut (int? id, CourseLecturerDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCourseLecturersIdPutExample
    {
        public void main()
        {
            var apiInstance = new CourseLecturersApi();
            var id = 56;  // int? | 
            var body = new CourseLecturerDTO(); // CourseLecturerDTO |  (optional) 

            try
            {
                apiInstance.ApiCourseLecturersIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CourseLecturersApi.ApiCourseLecturersIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**CourseLecturerDTO**](CourseLecturerDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apicourselecturerspost"></a>
# **ApiCourseLecturersPost**
> CourseLecturerDTO ApiCourseLecturersPost (CourseLecturerDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiCourseLecturersPostExample
    {
        public void main()
        {
            var apiInstance = new CourseLecturersApi();
            var body = new CourseLecturerDTO(); // CourseLecturerDTO |  (optional) 

            try
            {
                CourseLecturerDTO result = apiInstance.ApiCourseLecturersPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling CourseLecturersApi.ApiCourseLecturersPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CourseLecturerDTO**](CourseLecturerDTO.md)|  | [optional] 

### Return type

[**CourseLecturerDTO**](CourseLecturerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
