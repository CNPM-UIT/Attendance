# IO.Swagger.Api.AnswersApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiAnswersGet**](AnswersApi.md#apianswersget) | **GET** /api/Answers | 
[**ApiAnswersIdDelete**](AnswersApi.md#apianswersiddelete) | **DELETE** /api/Answers/{id} | 
[**ApiAnswersIdGet**](AnswersApi.md#apianswersidget) | **GET** /api/Answers/{id} | 
[**ApiAnswersIdPut**](AnswersApi.md#apianswersidput) | **PUT** /api/Answers/{id} | 
[**ApiAnswersPost**](AnswersApi.md#apianswerspost) | **POST** /api/Answers | 

<a name="apianswersget"></a>
# **ApiAnswersGet**
> List<AnswerDTO> ApiAnswersGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiAnswersGetExample
    {
        public void main()
        {
            var apiInstance = new AnswersApi();

            try
            {
                List&lt;AnswerDTO&gt; result = apiInstance.ApiAnswersGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling AnswersApi.ApiAnswersGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<AnswerDTO>**](AnswerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apianswersiddelete"></a>
# **ApiAnswersIdDelete**
> AnswerDTO ApiAnswersIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiAnswersIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new AnswersApi();
            var id = 56;  // int? | 

            try
            {
                AnswerDTO result = apiInstance.ApiAnswersIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling AnswersApi.ApiAnswersIdDelete: " + e.Message );
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

[**AnswerDTO**](AnswerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apianswersidget"></a>
# **ApiAnswersIdGet**
> AnswerDTO ApiAnswersIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiAnswersIdGetExample
    {
        public void main()
        {
            var apiInstance = new AnswersApi();
            var id = 56;  // int? | 

            try
            {
                AnswerDTO result = apiInstance.ApiAnswersIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling AnswersApi.ApiAnswersIdGet: " + e.Message );
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

[**AnswerDTO**](AnswerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apianswersidput"></a>
# **ApiAnswersIdPut**
> void ApiAnswersIdPut (int? id, AnswerDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiAnswersIdPutExample
    {
        public void main()
        {
            var apiInstance = new AnswersApi();
            var id = 56;  // int? | 
            var body = new AnswerDTO(); // AnswerDTO |  (optional) 

            try
            {
                apiInstance.ApiAnswersIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling AnswersApi.ApiAnswersIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**AnswerDTO**](AnswerDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apianswerspost"></a>
# **ApiAnswersPost**
> AnswerDTO ApiAnswersPost (AnswerDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiAnswersPostExample
    {
        public void main()
        {
            var apiInstance = new AnswersApi();
            var body = new AnswerDTO(); // AnswerDTO |  (optional) 

            try
            {
                AnswerDTO result = apiInstance.ApiAnswersPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling AnswersApi.ApiAnswersPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AnswerDTO**](AnswerDTO.md)|  | [optional] 

### Return type

[**AnswerDTO**](AnswerDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
