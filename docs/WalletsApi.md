# BbceApi::WalletsApi

All URIs are relative to */bus*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_wallets**](WalletsApi.md#list_wallets) | **GET** /v1/wallets | List all wallets that can be operated by current user

# **list_wallets**
> Array&lt;Wallet&gt; list_wallets

List all wallets that can be operated by current user

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::WalletsApi.new

begin
  #List all wallets that can be operated by current user
  result = api_instance.list_wallets
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling WalletsApi->list_wallets: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;Wallet&gt;**](Wallet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



