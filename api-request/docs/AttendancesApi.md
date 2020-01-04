# IO.Swagger.Api.AttendancesApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiAttendancesGet**](AttendancesApi.md#apiattendancesget) | **GET** /api/Attendances | 
[**ApiAttendancesIdDelete**](AttendancesApi.md#apiattendancesiddelete) | **DELETE** /api/Attendances/{id} | 
[**ApiAttendancesIdGet**](AttendancesApi.md#apiattendancesidget) | **GET** /api/Attendances/{id} | 
[**ApiAttendancesIdPut**](AttendancesApi.md#apiattendancesidput) | **PUT** /api/Attendances/{id} | 
[**ApiAttendancesPost**](AttendancesApi.md#apiattendancespost) | **POST** /api/Attendances | 

<a name="apiattendancesget"></a>
# **ApiAttendancesGet**
> List<AttendanceDTO> ApiAttendancesGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiAttendancesGetExample
    {
        public void main()
        {
            var apiInstance = new AttendancesApi();

            try
            {
                List&lt;AttendanceDTO&gt; result = apiInstance.ApiAttendancesGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling AttendancesApi.ApiAttendancesGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<AttendanceDTO>**](AttendanceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apiattendancesiddelete"></a>
# **ApiAttendancesIdDelete**
> AttendanceDTO ApiAttendancesIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiAttendancesIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new AttendancesApi();
            var id = 56;  // int? | 

            try
            {
                AttendanceDTO result = apiInstance.ApiAttendancesIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling AttendancesApi.ApiAttendancesIdDelete: " + e.Message );
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

[**AttendanceDTO**](AttendanceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apiattendancesidget"></a>
# **ApiAttendancesIdGet**
> AttendanceDTO ApiAttendancesIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiAttendancesIdGetExample
    {
        public void main()
        {
            var apiInstance = new AttendancesApi();
            var id = 56;  // int? | 

            try
            {
                AttendanceDTO result = apiInstance.ApiAttendancesIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling AttendancesApi.ApiAttendancesIdGet: " + e.Message );
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

[**AttendanceDTO**](AttendanceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apiattendancesidput"></a>
# **ApiAttendancesIdPut**
> void ApiAttendancesIdPut (int? id, AttendanceDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiAttendancesIdPutExample
    {
        public void main()
        {
            var apiInstance = new AttendancesApi();
            var id = 56;  // int? | 
            var body = new AttendanceDTO(); // AttendanceDTO |  (optional) 

            try
            {
                apiInstance.ApiAttendancesIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling AttendancesApi.ApiAttendancesIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**AttendanceDTO**](AttendanceDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apiattendancespost"></a>
# **ApiAttendancesPost**
> AttendanceDTO ApiAttendancesPost (AttendanceDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiAttendancesPostExample
    {
        public void main()
        {
            var apiInstance = new AttendancesApi();
            var body = new AttendanceDTO(); // AttendanceDTO |  (optional) 

            try
            {
                AttendanceDTO result = apiInstance.ApiAttendancesPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling AttendancesApi.ApiAttendancesPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AttendanceDTO**](AttendanceDTO.md)|  | [optional] 

### Return type

[**AttendanceDTO**](AttendanceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
