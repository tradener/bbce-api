# BbceApi::RegistriesApi

All URIs are relative to */bus*

Method | HTTP request | Description
------------- | ------------- | -------------
[**approve_registry**](RegistriesApi.md#approve_registry) | **PUT** /v1/registries/{registryId}/approve | Approve a registry
[**create_registry**](RegistriesApi.md#create_registry) | **POST** /v1/registries | Create a registry
[**list_registries**](RegistriesApi.md#list_registries) | **GET** /v1/registries | Returns list of registries

# **approve_registry**
> Registry approve_registry(bodyregistry_id)

Approve a registry

This API is used when a counterparty creates a registry with you. To complete the Deal you will need to approve it

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::RegistriesApi.new
body = BbceApi::ApproveRegistry.new # ApproveRegistry | 
registry_id = 56 # Integer | Registry identifier


begin
  #Approve a registry
  result = api_instance.approve_registry(bodyregistry_id)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling RegistriesApi->approve_registry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApproveRegistry**](ApproveRegistry.md)|  | 
 **registry_id** | **Integer**| Registry identifier | 

### Return type

[**Registry**](Registry.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



# **create_registry**
> Registry create_registry(body)

Create a registry

The Registry API is used when you want to create a standard registry. You need to inform your counterparty the moment you create your registry

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::RegistriesApi.new
body = BbceApi::CreateRegistry.new # CreateRegistry | 


begin
  #Create a registry
  result = api_instance.create_registry(body)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling RegistriesApi->create_registry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateRegistry**](CreateRegistry.md)|  | 

### Return type

[**Registry**](Registry.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



# **list_registries**
> Array&lt;Registry&gt; list_registries(wallet_id, opts)

Returns list of registries

This API returns a list of registries of a specific wallet. You can filter by date

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::RegistriesApi.new
wallet_id = 56 # Integer | Wallet identifier number.   Parameter **id** that was received in the response object of **/v1/wallets** in Wallets API
opts = { 
  end_date: 'end_date_example', # String | The final ISO String Date to filter values
  start_date: 'start_date_example', # String | The initial ISO String Date to filter values
  last_resource_key: 'last_resource_key_example' # String | Primary key of the last resource returned
}

begin
  #Returns list of registries
  result = api_instance.list_registries(wallet_id, opts)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling RegistriesApi->list_registries: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wallet_id** | **Integer**| Wallet identifier number.   Parameter **id** that was received in the response object of **/v1/wallets** in Wallets API | 
 **end_date** | **String**| The final ISO String Date to filter values | [optional] 
 **start_date** | **String**| The initial ISO String Date to filter values | [optional] 
 **last_resource_key** | **String**| Primary key of the last resource returned | [optional] 

### Return type

[**Array&lt;Registry&gt;**](Registry.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



