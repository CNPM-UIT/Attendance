# IO.Swagger.Api.MessageLecturersApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiMessageLecturersGet**](MessageLecturersApi.md#apimessagelecturersget) | **GET** /api/MessageLecturers | 
[**ApiMessageLecturersIdDelete**](MessageLecturersApi.md#apimessagelecturersiddelete) | **DELETE** /api/MessageLecturers/{id} | 
[**ApiMessageLecturersIdGet**](MessageLecturersApi.md#apimessagelecturersidget) | **GET** /api/MessageLecturers/{id} | 
[**ApiMessageLecturersIdPut**](MessageLecturersApi.md#apimessagelecturersidput) | **PUT** /api/MessageLecturers/{id} | 
[**ApiMessageLecturersOfDiscussionDicussionIdGet**](MessageLecturersApi.md#apimessagelecturersofdiscussiondicussionidget) | **GET** /api/MessageLecturers/OfDiscussion/{dicussionId} | 
[**ApiMessageLecturersPost**](MessageLecturersApi.md#apimessagelecturerspost) | **POST** /api/MessageLecturers | 

<a name="apimessagelecturersget"></a>
# **ApiMessageLecturersGet**
> List<MessageLecturerDTO> ApiMessageLecturersGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiMessageLecturersGetExample
    {
        public void main()
        {
            var apiInstance = new MessageLecturersApi();

            try
            {
                List&lt;MessageLecturerDTO&gt; result = apiInstance.ApiMessageLecturersGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MessageLecturersApi.ApiMessageLecturersGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MessageLecturerDTO>**](MessageLecturerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apimessagelecturersiddelete"></a>
# **ApiMessageLecturersIdDelete**
> MessageLecturerDTO ApiMessageLecturersIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiMessageLecturersIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new MessageLecturersApi();
            var id = 56;  // int? | 

            try
            {
                MessageLecturerDTO result = apiInstance.ApiMessageLecturersIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MessageLecturersApi.ApiMessageLecturersIdDelete: " + e.Message );
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

[**MessageLecturerDTO**](MessageLecturerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apimessagelecturersidget"></a>
# **ApiMessageLecturersIdGet**
> MessageLecturerDTO ApiMessageLecturersIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiMessageLecturersIdGetExample
    {
        public void main()
        {
            var apiInstance = new MessageLecturersApi();
            var id = 56;  // int? | 

            try
            {
                MessageLecturerDTO result = apiInstance.ApiMessageLecturersIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MessageLecturersApi.ApiMessageLecturersIdGet: " + e.Message );
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

[**MessageLecturerDTO**](MessageLecturerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apimessagelecturersidput"></a>
# **ApiMessageLecturersIdPut**
> void ApiMessageLecturersIdPut (int? id, MessageLecturerDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiMessageLecturersIdPutExample
    {
        public void main()
        {
            var apiInstance = new MessageLecturersApi();
            var id = 56;  // int? | 
            var body = new MessageLecturerDTO(); // MessageLecturerDTO |  (optional) 

            try
            {
                apiInstance.ApiMessageLecturersIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MessageLecturersApi.ApiMessageLecturersIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**MessageLecturerDTO**](MessageLecturerDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apimessagelecturersofdiscussiondicussionidget"></a>
# **ApiMessageLecturersOfDiscussionDicussionIdGet**
> List<MessageLecturerDTO> ApiMessageLecturersOfDiscussionDicussionIdGet (int? dicussionId)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiMessageLecturersOfDiscussionDicussionIdGetExample
    {
        public void main()
        {
            var apiInstance = new MessageLecturersApi();
            var dicussionId = 56;  // int? | 

            try
            {
                List&lt;MessageLecturerDTO&gt; result = apiInstance.ApiMessageLecturersOfDiscussionDicussionIdGet(dicussionId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MessageLecturersApi.ApiMessageLecturersOfDiscussionDicussionIdGet: " + e.Message );
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

[**List<MessageLecturerDTO>**](MessageLecturerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apimessagelecturerspost"></a>
# **ApiMessageLecturersPost**
> MessageLecturerDTO ApiMessageLecturersPost (MessageLecturerDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiMessageLecturersPostExample
    {
        public void main()
        {
            var apiInstance = new MessageLecturersApi();
            var body = new MessageLecturerDTO(); // MessageLecturerDTO |  (optional) 

            try
            {
                MessageLecturerDTO result = apiInstance.ApiMessageLecturersPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling MessageLecturersApi.ApiMessageLecturersPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MessageLecturerDTO**](MessageLecturerDTO.md)|  | [optional] 

### Return type

[**MessageLecturerDTO**](MessageLecturerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
