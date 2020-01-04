# IO.Swagger.Api.RatesApi

All URIs are relative to */*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiRatesGet**](RatesApi.md#apiratesget) | **GET** /api/Rates | 
[**ApiRatesIdDelete**](RatesApi.md#apiratesiddelete) | **DELETE** /api/Rates/{id} | 
[**ApiRatesIdGet**](RatesApi.md#apiratesidget) | **GET** /api/Rates/{id} | 
[**ApiRatesIdPut**](RatesApi.md#apiratesidput) | **PUT** /api/Rates/{id} | 
[**ApiRatesPost**](RatesApi.md#apiratespost) | **POST** /api/Rates | 

<a name="apiratesget"></a>
# **ApiRatesGet**
> List<RateDTO> ApiRatesGet ()



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiRatesGetExample
    {
        public void main()
        {
            var apiInstance = new RatesApi();

            try
            {
                List&lt;RateDTO&gt; result = apiInstance.ApiRatesGet();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RatesApi.ApiRatesGet: " + e.Message );
            }
        }
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<RateDTO>**](RateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apiratesiddelete"></a>
# **ApiRatesIdDelete**
> RateDTO ApiRatesIdDelete (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiRatesIdDeleteExample
    {
        public void main()
        {
            var apiInstance = new RatesApi();
            var id = 56;  // int? | 

            try
            {
                RateDTO result = apiInstance.ApiRatesIdDelete(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RatesApi.ApiRatesIdDelete: " + e.Message );
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

[**RateDTO**](RateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apiratesidget"></a>
# **ApiRatesIdGet**
> RateDTO ApiRatesIdGet (int? id)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiRatesIdGetExample
    {
        public void main()
        {
            var apiInstance = new RatesApi();
            var id = 56;  // int? | 

            try
            {
                RateDTO result = apiInstance.ApiRatesIdGet(id);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RatesApi.ApiRatesIdGet: " + e.Message );
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

[**RateDTO**](RateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apiratesidput"></a>
# **ApiRatesIdPut**
> void ApiRatesIdPut (int? id, RateDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiRatesIdPutExample
    {
        public void main()
        {
            var apiInstance = new RatesApi();
            var id = 56;  // int? | 
            var body = new RateDTO(); // RateDTO |  (optional) 

            try
            {
                apiInstance.ApiRatesIdPut(id, body);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RatesApi.ApiRatesIdPut: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int?**|  | 
 **body** | [**RateDTO**](RateDTO.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
<a name="apiratespost"></a>
# **ApiRatesPost**
> RateDTO ApiRatesPost (RateDTO body = null)



### Example
```csharp
using System;
using System.Diagnostics;
using IO.Swagger.Api;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace Example
{
    public class ApiRatesPostExample
    {
        public void main()
        {
            var apiInstance = new RatesApi();
            var body = new RateDTO(); // RateDTO |  (optional) 

            try
            {
                RateDTO result = apiInstance.ApiRatesPost(body);
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling RatesApi.ApiRatesPost: " + e.Message );
            }
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RateDTO**](RateDTO.md)|  | [optional] 

### Return type

[**RateDTO**](RateDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
