# IO.Swagger.Api.QuestionsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiQuestionsGet**](QuestionsApi.md#apiquestionsget) | **GET** /api/Questions | 
[**ApiQuestionsIdDelete**](QuestionsApi.md#apiquestionsiddelete) | **DELETE** /api/Questions/{id} | 
[**ApiQuestionsIdGet**](QuestionsApi.md#apiquestionsidget) | **GET** /api/Questions/{id} | 
[**ApiQuestionsIdPut**](QuestionsApi.md#apiquestionsidput) | **PUT** /api/Questions/{id} | 
[**ApiQuestionsOfLessionTestIdGet**](QuestionsApi.md#apiquestionsoflessiontestidget) | **GET** /api/Questions/OfLession/{testId} | 
[**ApiQuestionsPost**](QuestionsApi.md#apiquestionspost) | **POST** /api/Questions | 

<a name="apiquestionsget"></a>
# **ApiQuestionsGet**
> List<QuestionDTO> ApiQuestionsGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiQuestionsGetExample
    {
        public void main()
        {
            var apiInstance = new QuestionsApi();

            try
            {
                List&lt;QuestionDTO&gt; result = apiInstance.ApiQuestionsGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling QuestionsApi.ApiQuestionsGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<QuestionDTO>**](QuestionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apiquestionsiddelete"></a>
# **ApiQuestionsIdDelete**
> QuestionDTO ApiQuestionsIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiQuestionsIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new QuestionsApi();
            var id = 56;  // int? | 

            try
            {
                QuestionDTO result = apiInstance.ApiQuestionsIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling QuestionsApi.ApiQuestionsIdDelete: " + e.Message );
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

[**QuestionDTO**](QuestionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apiquestionsidget"></a>
# **ApiQuestionsIdGet**
> QuestionDTO ApiQuestionsIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiQuestionsIdGetExample
    {
        public void main()
        {
            var apiInstance = new QuestionsApi();
            var id = 56;  // int? | 

            try
            {
                QuestionDTO result = apiInstance.ApiQuestionsIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling QuestionsApi.ApiQuestionsIdGet: " + e.Message );
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

[**QuestionDTO**](QuestionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apiquestionsidput"></a>
# **ApiQuestionsIdPut**
> void ApiQuestionsIdPut (int? id, QuestionDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiQuestionsIdPutExample
    {
        public void main()
        {
            var apiInstance = new QuestionsApi();
            var id = 56;  // int? | 
            var body = new QuestionDTO(); // QuestionDTO |  (optional) 

            try
            {
                apiInstance.ApiQuestionsIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling QuestionsApi.ApiQuestionsIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**QuestionDTO**](QuestionDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apiquestionsoflessiontestidget"></a>
# **ApiQuestionsOfLessionTestIdGet**
> List<QuestionDTO> ApiQuestionsOfLessionTestIdGet (int? testId)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiQuestionsOfLessionTestIdGetExample
    {
        public void main()
        {
            var apiInstance = new QuestionsApi();
            var testId = 56;  // int? | 

            try
            {
                List&lt;QuestionDTO&gt; result = apiInstance.ApiQuestionsOfLessionTestIdGet(testId);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling QuestionsApi.ApiQuestionsOfLessionTestIdGet: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **testId** | **int?**|  | 

### Return type

[**List<QuestionDTO>**](QuestionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apiquestionspost"></a>
# **ApiQuestionsPost**
> QuestionDTO ApiQuestionsPost (QuestionDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiQuestionsPostExample
    {
        public void main()
        {
            var apiInstance = new QuestionsApi();
            var body = new QuestionDTO(); // QuestionDTO |  (optional) 

            try
            {
                QuestionDTO result = apiInstance.ApiQuestionsPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling QuestionsApi.ApiQuestionsPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**QuestionDTO**](QuestionDTO.md)|  | [optional] 

### Return type

[**QuestionDTO**](QuestionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
