# IO.Swagger.Api.DiscussionsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiDiscussionsGet**](DiscussionsApi.md#apidiscussionsget) | **GET** /api/Discussions | 
[**ApiDiscussionsIdDelete**](DiscussionsApi.md#apidiscussionsiddelete) | **DELETE** /api/Discussions/{id} | 
[**ApiDiscussionsIdGet**](DiscussionsApi.md#apidiscussionsidget) | **GET** /api/Discussions/{id} | 
[**ApiDiscussionsIdPut**](DiscussionsApi.md#apidiscussionsidput) | **PUT** /api/Discussions/{id} | 
[**ApiDiscussionsOfLessionLessionIdGet**](DiscussionsApi.md#apidiscussionsoflessionlessionidget) | **GET** /api/Discussions/OfLession/{lessionId} | 
[**ApiDiscussionsPost**](DiscussionsApi.md#apidiscussionspost) | **POST** /api/Discussions | 

<a name="apidiscussionsget"></a>
# **ApiDiscussionsGet**
> List<DiscussionDTO> ApiDiscussionsGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiDiscussionsGetExample
    {
        public void main()
        {
            var apiInstance = new DiscussionsApi();

            try
            {
                List&lt;DiscussionDTO&gt; result = apiInstance.ApiDiscussionsGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DiscussionsApi.ApiDiscussionsGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<DiscussionDTO>**](DiscussionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apidiscussionsiddelete"></a>
# **ApiDiscussionsIdDelete**
> DiscussionDTO ApiDiscussionsIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiDiscussionsIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new DiscussionsApi();
            var id = 56;  // int? | 

            try
            {
                DiscussionDTO result = apiInstance.ApiDiscussionsIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DiscussionsApi.ApiDiscussionsIdDelete: " + e.Message );
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

[**DiscussionDTO**](DiscussionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apidiscussionsidget"></a>
# **ApiDiscussionsIdGet**
> DiscussionDTO ApiDiscussionsIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiDiscussionsIdGetExample
    {
        public void main()
        {
            var apiInstance = new DiscussionsApi();
            var id = 56;  // int? | 

            try
            {
                DiscussionDTO result = apiInstance.ApiDiscussionsIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DiscussionsApi.ApiDiscussionsIdGet: " + e.Message );
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

[**DiscussionDTO**](DiscussionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apidiscussionsidput"></a>
# **ApiDiscussionsIdPut**
> void ApiDiscussionsIdPut (int? id, DiscussionDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiDiscussionsIdPutExample
    {
        public void main()
        {
            var apiInstance = new DiscussionsApi();
            var id = 56;  // int? | 
            var body = new DiscussionDTO(); // DiscussionDTO |  (optional) 

            try
            {
                apiInstance.ApiDiscussionsIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DiscussionsApi.ApiDiscussionsIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**DiscussionDTO**](DiscussionDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apidiscussionsoflessionlessionidget"></a>
# **ApiDiscussionsOfLessionLessionIdGet**
> List<DiscussionDTO> ApiDiscussionsOfLessionLessionIdGet (int? lessionId)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiDiscussionsOfLessionLessionIdGetExample
    {
        public void main()
        {
            var apiInstance = new DiscussionsApi();
            var lessionId = 56;  // int? | 

            try
            {
                List&lt;DiscussionDTO&gt; result = apiInstance.ApiDiscussionsOfLessionLessionIdGet(lessionId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DiscussionsApi.ApiDiscussionsOfLessionLessionIdGet: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lessionId** | **int?**|  | 

### Return type

[**List<DiscussionDTO>**](DiscussionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apidiscussionspost"></a>
# **ApiDiscussionsPost**
> DiscussionDTO ApiDiscussionsPost (DiscussionDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiDiscussionsPostExample
    {
        public void main()
        {
            var apiInstance = new DiscussionsApi();
            var body = new DiscussionDTO(); // DiscussionDTO |  (optional) 

            try
            {
                DiscussionDTO result = apiInstance.ApiDiscussionsPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling DiscussionsApi.ApiDiscussionsPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DiscussionDTO**](DiscussionDTO.md)|  | [optional] 

### Return type

[**DiscussionDTO**](DiscussionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
