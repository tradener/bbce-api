# BbceApi::CompaniesApi

All URIs are relative to */bus*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_company_by_id**](CompaniesApi.md#get_company_by_id) | **GET** /v1/companies/{companyId} | Get Company by Identification
[**get_company_by_id_v2**](CompaniesApi.md#get_company_by_id_v2) | **GET** /v2/companies/{companyId} | Get Company by Identification
[**list_companies**](CompaniesApi.md#list_companies) | **GET** /v1/companies | List Companies
[**list_companies_v2**](CompaniesApi.md#list_companies_v2) | **GET** /v2/companies | List Companies

# **get_company_by_id**
> Company get_company_by_id(company_id)

Get Company by Identification

Get a specific company information by using a companyId

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::CompaniesApi.new
company_id = 'company_id_example' # String | 


begin
  #Get Company by Identification
  result = api_instance.get_company_by_id(company_id)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling CompaniesApi->get_company_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**|  | 

### Return type

[**Company**](Company.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_company_by_id_v2**
> Company get_company_by_id_v2(company_id)

Get Company by Identification

Get a specific company information by using a companyId

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::CompaniesApi.new
company_id = 'company_id_example' # String | 


begin
  #Get Company by Identification
  result = api_instance.get_company_by_id_v2(company_id)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling CompaniesApi->get_company_by_id_v2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **company_id** | **String**|  | 

### Return type

[**Company**](Company.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_companies**
> Array&lt;Company&gt; list_companies(opts)

List Companies

The Companies API is used when you want to receive companies information. It's possible to specify the company or receive information on a specific status

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::CompaniesApi.new
opts = { 
  trade_name: 'trade_name_example', # String | Company trade name
  status: 'status_example' # String | Company status
}

begin
  #List Companies
  result = api_instance.list_companies(opts)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling CompaniesApi->list_companies: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trade_name** | **String**| Company trade name | [optional] 
 **status** | **String**| Company status | [optional] 

### Return type

[**Array&lt;Company&gt;**](Company.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_companies_v2**
> Array&lt;Company&gt; list_companies_v2(opts)

List Companies

The Companies API is used when you want to receive companies information. It's possible to specify the company or receive information on a specific status

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::CompaniesApi.new
opts = { 
  trade_name: 'trade_name_example', # String | Company trade name
  status: 'status_example' # String | Company status
}

begin
  #List Companies
  result = api_instance.list_companies_v2(opts)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling CompaniesApi->list_companies_v2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **trade_name** | **String**| Company trade name | [optional] 
 **status** | **String**| Company status | [optional] 

### Return type

[**Array&lt;Company&gt;**](Company.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



