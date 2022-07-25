# BbceApi::DetailedRegistriesApi

All URIs are relative to */bus*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_detailed_registry**](DetailedRegistriesApi.md#create_detailed_registry) | **POST** /v1/detailed-registries | Create a detailed registry

# **create_detailed_registry**
> Registry create_detailed_registry(body)

Create a detailed registry

This API is used when you want to create a detailed registry, witch means this registry can be customized whereas the standard registry cannot

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::DetailedRegistriesApi.new
body = BbceApi::CreateDetailedRegistryResource.new # CreateDetailedRegistryResource | 


begin
  #Create a detailed registry
  result = api_instance.create_detailed_registry(body)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling DetailedRegistriesApi->create_detailed_registry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateDetailedRegistryResource**](CreateDetailedRegistryResource.md)|  | 

### Return type

[**Registry**](Registry.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



