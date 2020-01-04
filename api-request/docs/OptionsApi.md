# IO.Swagger.Api.OptionsApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiOptionsGet**](OptionsApi.md#apioptionsget) | **GET** /api/Options | 
[**ApiOptionsIdDelete**](OptionsApi.md#apioptionsiddelete) | **DELETE** /api/Options/{id} | 
[**ApiOptionsIdGet**](OptionsApi.md#apioptionsidget) | **GET** /api/Options/{id} | 
[**ApiOptionsIdPut**](OptionsApi.md#apioptionsidput) | **PUT** /api/Options/{id} | 
[**ApiOptionsPost**](OptionsApi.md#apioptionspost) | **POST** /api/Options | 

<a name="apioptionsget"></a>
# **ApiOptionsGet**
> List<OptionDTO> ApiOptionsGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiOptionsGetExample
    {
        public void main()
        {
            var apiInstance = new OptionsApi();

            try
            {
                List&lt;OptionDTO&gt; result = apiInstance.ApiOptionsGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OptionsApi.ApiOptionsGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<OptionDTO>**](OptionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apioptionsiddelete"></a>
# **ApiOptionsIdDelete**
> OptionDTO ApiOptionsIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiOptionsIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new OptionsApi();
            var id = 56;  // int? | 

            try
            {
                OptionDTO result = apiInstance.ApiOptionsIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OptionsApi.ApiOptionsIdDelete: " + e.Message );
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

[**OptionDTO**](OptionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apioptionsidget"></a>
# **ApiOptionsIdGet**
> OptionDTO ApiOptionsIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiOptionsIdGetExample
    {
        public void main()
        {
            var apiInstance = new OptionsApi();
            var id = 56;  // int? | 

            try
            {
                OptionDTO result = apiInstance.ApiOptionsIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OptionsApi.ApiOptionsIdGet: " + e.Message );
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

[**OptionDTO**](OptionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apioptionsidput"></a>
# **ApiOptionsIdPut**
> void ApiOptionsIdPut (int? id, OptionDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiOptionsIdPutExample
    {
        public void main()
        {
            var apiInstance = new OptionsApi();
            var id = 56;  // int? | 
            var body = new OptionDTO(); // OptionDTO |  (optional) 

            try
            {
                apiInstance.ApiOptionsIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OptionsApi.ApiOptionsIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**OptionDTO**](OptionDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apioptionspost"></a>
# **ApiOptionsPost**
> OptionDTO ApiOptionsPost (OptionDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiOptionsPostExample
    {
        public void main()
        {
            var apiInstance = new OptionsApi();
            var body = new OptionDTO(); // OptionDTO |  (optional) 

            try
            {
                OptionDTO result = apiInstance.ApiOptionsPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling OptionsApi.ApiOptionsPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**OptionDTO**](OptionDTO.md)|  | [optional] 

### Return type

[**OptionDTO**](OptionDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
