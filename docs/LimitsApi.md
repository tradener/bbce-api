# BbceApi::LimitsApi

All URIs are relative to */bus*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bilateral_company_limit**](LimitsApi.md#get_bilateral_company_limit) | **GET** /v1/bilateral-company/{productLinkId} | Get current limit between companies
[**post_bilateral_company_limit**](LimitsApi.md#post_bilateral_company_limit) | **POST** /v1/bilateral-company | Create a ProductLink Bilateral Limit between companies

# **get_bilateral_company_limit**
> Array&lt;BilateralCompanyLimit&gt; get_bilateral_company_limit(product_link_id)

Get current limit between companies

This API is used to control a bilateral limit between companies. You can get current purchase and sale consume limit and its percentage

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::LimitsApi.new
product_link_id = 56 # Integer | Product Link identifier


begin
  #Get current limit between companies
  result = api_instance.get_bilateral_company_limit(product_link_id)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling LimitsApi->get_bilateral_company_limit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_link_id** | **Integer**| Product Link identifier | 

### Return type

[**Array&lt;BilateralCompanyLimit&gt;**](BilateralCompanyLimit.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_bilateral_company_limit**
> post_bilateral_company_limit(body)

Create a ProductLink Bilateral Limit between companies

This API is used to create a new bilateral limit between companies

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::LimitsApi.new
body = BbceApi::CreateBilateralCompany.new # CreateBilateralCompany | Create a ProductLink Bilateral Limit between companies


begin
  #Create a ProductLink Bilateral Limit between companies
  api_instance.post_bilateral_company_limit(body)
rescue BbceApi::ApiError => e
  puts "Exception when calling LimitsApi->post_bilateral_company_limit: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateBilateralCompany**](CreateBilateralCompany.md)| Create a ProductLink Bilateral Limit between companies | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



