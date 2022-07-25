# BbceApi::MatchesApi

All URIs are relative to */bus*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_matches**](MatchesApi.md#list_matches) | **GET** /v1/matches | List company&#x27;s matches

# **list_matches**
> Array&lt;Match&gt; list_matches(opts)

List company's matches

This API returns a list of company's own matches. You can filter by period.

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::MatchesApi.new
opts = { 
  last_resource_key: 'last_resource_key_example', # String | Primary key of the last resource returned
  initial_period: 'initial_period_example', # String | The initial ISO String Date to filter values
  final_period: 'final_period_example' # String | The final ISO String Date to filter values
}

begin
  #List company's matches
  result = api_instance.list_matches(opts)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling MatchesApi->list_matches: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **last_resource_key** | **String**| Primary key of the last resource returned | [optional] 
 **initial_period** | **String**| The initial ISO String Date to filter values | [optional] 
 **final_period** | **String**| The final ISO String Date to filter values | [optional] 

### Return type

[**Array&lt;Match&gt;**](Match.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



