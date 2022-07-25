# BbceApi::CurveApi

All URIs are relative to */bus*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_bbce_fwd_curve**](CurveApi.md#get_bbce_fwd_curve) | **GET** /v1/curve/bbce-fwd | List FWD Curve

# **get_bbce_fwd_curve**
> Array&lt;Curve&gt; get_bbce_fwd_curve(reference_date, opts)

List FWD Curve

List FWD Curve according to reference date

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::CurveApi.new
reference_date = 'reference_date_example' # String | The final ISO String Date to filter values
opts = { 
  page: 56 # Integer | Pagination (by default search for all elements)
}

begin
  #List FWD Curve
  result = api_instance.get_bbce_fwd_curve(reference_date, opts)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling CurveApi->get_bbce_fwd_curve: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reference_date** | **String**| The final ISO String Date to filter values | 
 **page** | **Integer**| Pagination (by default search for all elements) | [optional] 

### Return type

[**Array&lt;Curve&gt;**](Curve.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



