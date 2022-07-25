# BbceApi::ContractsApi

All URIs are relative to */bus*

Method | HTTP request | Description
------------- | ------------- | -------------
[**download_contract**](ContractsApi.md#download_contract) | **GET** /v1/contracts/{contractId}/download | Returns a base64 string for PDF generation
[**download_contract_by_number**](ContractsApi.md#download_contract_by_number) | **GET** /v1/contracts/download | Returns a base64 string for PDF generation
[**get_customer_all_business_report**](ContractsApi.md#get_customer_all_business_report) | **GET** /v1/all-deals/report | Returns a list of all deals

# **download_contract**
> String download_contract(contract_id)

Returns a base64 string for PDF generation

The API is used to download a PDF file of a specific contract

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::ContractsApi.new
contract_id = 56 # Integer | Contract identifier


begin
  #Returns a base64 string for PDF generation
  result = api_instance.download_contract(contract_id)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling ContractsApi->download_contract: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_id** | **Integer**| Contract identifier | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **download_contract_by_number**
> String download_contract_by_number(contract_number)

Returns a base64 string for PDF generation

The API is used to download a PDF file of a specific contract

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::ContractsApi.new
contract_number = 'contract_number_example' # String | Parameter contractNumber that was received in the response object of **/v1/matches** in Matches API.


begin
  #Returns a base64 string for PDF generation
  result = api_instance.download_contract_by_number(contract_number)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling ContractsApi->download_contract_by_number: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **contract_number** | **String**| Parameter contractNumber that was received in the response object of **/v1/matches** in Matches API. | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_customer_all_business_report**
> Array&lt;AllBusinessReport&gt; get_customer_all_business_report(opts)

Returns a list of all deals

This API returns a list of all deals. You can filter by period or operation type

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::ContractsApi.new
opts = { 
  initial_period: 'initial_period_example', # String | The initial ISO String Date to filter values
  final_period: 'final_period_example', # String | The final ISO String Date to filter values
  page: 56, # Integer | Pagination (by default search for all elements)
  origin_operation_type: 'origin_operation_type_example' # String | Operation Type
}

begin
  #Returns a list of all deals
  result = api_instance.get_customer_all_business_report(opts)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling ContractsApi->get_customer_all_business_report: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **initial_period** | **String**| The initial ISO String Date to filter values | [optional] 
 **final_period** | **String**| The final ISO String Date to filter values | [optional] 
 **page** | **Integer**| Pagination (by default search for all elements) | [optional] 
 **origin_operation_type** | **String**| Operation Type | [optional] 

### Return type

[**Array&lt;AllBusinessReport&gt;**](AllBusinessReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



