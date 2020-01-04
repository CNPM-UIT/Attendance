# IO.Swagger.Api.LecturersApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiLecturersGet**](LecturersApi.md#apilecturersget) | **GET** /api/Lecturers | 
[**ApiLecturersIdDelete**](LecturersApi.md#apilecturersiddelete) | **DELETE** /api/Lecturers/{id} | 
[**ApiLecturersIdGet**](LecturersApi.md#apilecturersidget) | **GET** /api/Lecturers/{id} | 
[**ApiLecturersIdPut**](LecturersApi.md#apilecturersidput) | **PUT** /api/Lecturers/{id} | 
[**ApiLecturersPost**](LecturersApi.md#apilecturerspost) | **POST** /api/Lecturers | 

<a name="apilecturersget"></a>
# **ApiLecturersGet**
> List<LecturerDTO> ApiLecturersGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiLecturersGetExample
    {
        public void main()
        {
            var apiInstance = new LecturersApi();

            try
            {
                List&lt;LecturerDTO&gt; result = apiInstance.ApiLecturersGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LecturersApi.ApiLecturersGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<LecturerDTO>**](LecturerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apilecturersiddelete"></a>
# **ApiLecturersIdDelete**
> LecturerDTO ApiLecturersIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiLecturersIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new LecturersApi();
            var id = 56;  // int? | 

            try
            {
                LecturerDTO result = apiInstance.ApiLecturersIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LecturersApi.ApiLecturersIdDelete: " + e.Message );
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

[**LecturerDTO**](LecturerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apilecturersidget"></a>
# **ApiLecturersIdGet**
> LecturerDTO ApiLecturersIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiLecturersIdGetExample
    {
        public void main()
        {
            var apiInstance = new LecturersApi();
            var id = 56;  // int? | 

            try
            {
                LecturerDTO result = apiInstance.ApiLecturersIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LecturersApi.ApiLecturersIdGet: " + e.Message );
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

[**LecturerDTO**](LecturerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apilecturersidput"></a>
# **ApiLecturersIdPut**
> void ApiLecturersIdPut (int? id, LecturerDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiLecturersIdPutExample
    {
        public void main()
        {
            var apiInstance = new LecturersApi();
            var id = 56;  // int? | 
            var body = new LecturerDTO(); // LecturerDTO |  (optional) 

            try
            {
                apiInstance.ApiLecturersIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LecturersApi.ApiLecturersIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**LecturerDTO**](LecturerDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apilecturerspost"></a>
# **ApiLecturersPost**
> LecturerDTO ApiLecturersPost (LecturerDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiLecturersPostExample
    {
        public void main()
        {
            var apiInstance = new LecturersApi();
            var body = new LecturerDTO(); // LecturerDTO |  (optional) 

            try
            {
                LecturerDTO result = apiInstance.ApiLecturersPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling LecturersApi.ApiLecturersPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LecturerDTO**](LecturerDTO.md)|  | [optional] 

### Return type

[**LecturerDTO**](LecturerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
