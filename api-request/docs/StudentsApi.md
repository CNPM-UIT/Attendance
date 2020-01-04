# IO.Swagger.Api.StudentsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiStudentsGet**](StudentsApi.md#apistudentsget) | **GET** /api/Students | 
[**ApiStudentsIdDelete**](StudentsApi.md#apistudentsiddelete) | **DELETE** /api/Students/{id} | 
[**ApiStudentsIdGet**](StudentsApi.md#apistudentsidget) | **GET** /api/Students/{id} | 
[**ApiStudentsIdPut**](StudentsApi.md#apistudentsidput) | **PUT** /api/Students/{id} | 
[**ApiStudentsPost**](StudentsApi.md#apistudentspost) | **POST** /api/Students | 

<a name="apistudentsget"></a>
# **ApiStudentsGet**
> List<StudentDTO> ApiStudentsGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiStudentsGetExample
    {
        public void main()
        {
            var apiInstance = new StudentsApi();

            try
            {
                List&lt;StudentDTO&gt; result = apiInstance.ApiStudentsGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling StudentsApi.ApiStudentsGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<StudentDTO>**](StudentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apistudentsiddelete"></a>
# **ApiStudentsIdDelete**
> StudentDTO ApiStudentsIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiStudentsIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new StudentsApi();
            var id = 56;  // int? | 

            try
            {
                StudentDTO result = apiInstance.ApiStudentsIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling StudentsApi.ApiStudentsIdDelete: " + e.Message );
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

[**StudentDTO**](StudentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apistudentsidget"></a>
# **ApiStudentsIdGet**
> StudentDTO ApiStudentsIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiStudentsIdGetExample
    {
        public void main()
        {
            var apiInstance = new StudentsApi();
            var id = 56;  // int? | 

            try
            {
                StudentDTO result = apiInstance.ApiStudentsIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling StudentsApi.ApiStudentsIdGet: " + e.Message );
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

[**StudentDTO**](StudentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apistudentsidput"></a>
# **ApiStudentsIdPut**
> void ApiStudentsIdPut (int? id, StudentDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiStudentsIdPutExample
    {
        public void main()
        {
            var apiInstance = new StudentsApi();
            var id = 56;  // int? | 
            var body = new StudentDTO(); // StudentDTO |  (optional) 

            try
            {
                apiInstance.ApiStudentsIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling StudentsApi.ApiStudentsIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**StudentDTO**](StudentDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apistudentspost"></a>
# **ApiStudentsPost**
> StudentDTO ApiStudentsPost (StudentDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiStudentsPostExample
    {
        public void main()
        {
            var apiInstance = new StudentsApi();
            var body = new StudentDTO(); // StudentDTO |  (optional) 

            try
            {
                StudentDTO result = apiInstance.ApiStudentsPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling StudentsApi.ApiStudentsPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**StudentDTO**](StudentDTO.md)|  | [optional] 

### Return type

[**StudentDTO**](StudentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
