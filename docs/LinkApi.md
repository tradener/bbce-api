# BbceApi::LinkApi

All URIs are relative to */bus*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_link**](LinkApi.md#get_link) | **GET** /v1/link | Returns the list of links with product feature and underlying asset

# **get_link**
> Array&lt;ProductLink&gt; get_link(opts)

Returns the list of links with product feature and underlying asset

Returns the list of links with product feature and underlying asset

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::LinkApi.new
opts = { 
  page: 56, # Integer | Pagination (by default search for all elements)
  items_per_page: 56 # Integer | Number of items per page (default 10)
}

begin
  #Returns the list of links with product feature and underlying asset
  result = api_instance.get_link(opts)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling LinkApi->get_link: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Pagination (by default search for all elements) | [optional] 
 **items_per_page** | **Integer**| Number of items per page (default 10) | [optional] 

### Return type

[**Array&lt;ProductLink&gt;**](ProductLink.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



