# IO.Swagger.Api.MessageStudentsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiMessageStudentsGet**](MessageStudentsApi.md#apimessagestudentsget) | **GET** /api/MessageStudents | 
[**ApiMessageStudentsIdDelete**](MessageStudentsApi.md#apimessagestudentsiddelete) | **DELETE** /api/MessageStudents/{id} | 
[**ApiMessageStudentsIdGet**](MessageStudentsApi.md#apimessagestudentsidget) | **GET** /api/MessageStudents/{id} | 
[**ApiMessageStudentsIdPut**](MessageStudentsApi.md#apimessagestudentsidput) | **PUT** /api/MessageStudents/{id} | 
[**ApiMessageStudentsOfDiscussionDicussionIdGet**](MessageStudentsApi.md#apimessagestudentsofdiscussiondicussionidget) | **GET** /api/MessageStudents/OfDiscussion/{dicussionId} | 
[**ApiMessageStudentsPost**](MessageStudentsApi.md#apimessagestudentspost) | **POST** /api/MessageStudents | 

<a name="apimessagestudentsget"></a>
# **ApiMessageStudentsGet**
> List<MessageStudentDTO> ApiMessageStudentsGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiMessageStudentsGetExample
    {
        public void main()
        {
            var apiInstance = new MessageStudentsApi();

            try
            {
                List&lt;MessageStudentDTO&gt; result = apiInstance.ApiMessageStudentsGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MessageStudentsApi.ApiMessageStudentsGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MessageStudentDTO>**](MessageStudentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apimessagestudentsiddelete"></a>
# **ApiMessageStudentsIdDelete**
> MessageStudentDTO ApiMessageStudentsIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiMessageStudentsIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new MessageStudentsApi();
            var id = 56;  // int? | 

            try
            {
                MessageStudentDTO result = apiInstance.ApiMessageStudentsIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MessageStudentsApi.ApiMessageStudentsIdDelete: " + e.Message );
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

[**MessageStudentDTO**](MessageStudentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apimessagestudentsidget"></a>
# **ApiMessageStudentsIdGet**
> MessageStudentDTO ApiMessageStudentsIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiMessageStudentsIdGetExample
    {
        public void main()
        {
            var apiInstance = new MessageStudentsApi();
            var id = 56;  // int? | 

            try
            {
                MessageStudentDTO result = apiInstance.ApiMessageStudentsIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MessageStudentsApi.ApiMessageStudentsIdGet: " + e.Message );
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

[**MessageStudentDTO**](MessageStudentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apimessagestudentsidput"></a>
# **ApiMessageStudentsIdPut**
> void ApiMessageStudentsIdPut (int? id, MessageStudentDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiMessageStudentsIdPutExample
    {
        public void main()
        {
            var apiInstance = new MessageStudentsApi();
            var id = 56;  // int? | 
            var body = new MessageStudentDTO(); // MessageStudentDTO |  (optional) 

            try
            {
                apiInstance.ApiMessageStudentsIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MessageStudentsApi.ApiMessageStudentsIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**MessageStudentDTO**](MessageStudentDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apimessagestudentsofdiscussiondicussionidget"></a>
# **ApiMessageStudentsOfDiscussionDicussionIdGet**
> List<MessageStudentDTO> ApiMessageStudentsOfDiscussionDicussionIdGet (int? dicussionId)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiMessageStudentsOfDiscussionDicussionIdGetExample
    {
        public void main()
        {
            var apiInstance = new MessageStudentsApi();
            var dicussionId = 56;  // int? | 

            try
            {
                List&lt;MessageStudentDTO&gt; result = apiInstance.ApiMessageStudentsOfDiscussionDicussionIdGet(dicussionId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MessageStudentsApi.ApiMessageStudentsOfDiscussionDicussionIdGet: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dicussionId** | **int?**|  | 

### Return type

[**List<MessageStudentDTO>**](MessageStudentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apimessagestudentspost"></a>
# **ApiMessageStudentsPost**
> MessageStudentDTO ApiMessageStudentsPost (MessageStudentDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiMessageStudentsPostExample
    {
        public void main()
        {
            var apiInstance = new MessageStudentsApi();
            var body = new MessageStudentDTO(); // MessageStudentDTO |  (optional) 

            try
            {
                MessageStudentDTO result = apiInstance.ApiMessageStudentsPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MessageStudentsApi.ApiMessageStudentsPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MessageStudentDTO**](MessageStudentDTO.md)|  | [optional] 

### Return type

[**MessageStudentDTO**](MessageStudentDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
