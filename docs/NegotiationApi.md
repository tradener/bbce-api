# BbceApi::NegotiationApi

All URIs are relative to */bus*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_ticker_by_id**](NegotiationApi.md#get_ticker_by_id) | **GET** /v1/tickers/{tickerId} | Get Ticker by Identification
[**get_ticker_by_id_v2**](NegotiationApi.md#get_ticker_by_id_v2) | **GET** /v2/tickers/{tickerId} | Get Ticker by Identification
[**list_negotiable_tickers**](NegotiationApi.md#list_negotiable_tickers) | **GET** /v1/negotiable-tickers | Lists the tickers that the trader can operate
[**list_tickers**](NegotiationApi.md#list_tickers) | **GET** /v1/tickers | List tickers
[**list_tickers_v2**](NegotiationApi.md#list_tickers_v2) | **GET** /v2/tickers | List tickers

# **get_ticker_by_id**
> Ticker get_ticker_by_id(ticker_id)

Get Ticker by Identification

Get Ticker by Identification

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::NegotiationApi.new
ticker_id = 56 # Integer | Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API


begin
  #Get Ticker by Identification
  result = api_instance.get_ticker_by_id(ticker_id)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling NegotiationApi->get_ticker_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker_id** | **Integer**| Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API | 

### Return type

[**Ticker**](Ticker.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_ticker_by_id_v2**
> TickerById get_ticker_by_id_v2(ticker_id)

Get Ticker by Identification

Get Ticker by Identification

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::NegotiationApi.new
ticker_id = 56 # Integer | Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API


begin
  #Get Ticker by Identification
  result = api_instance.get_ticker_by_id_v2(ticker_id)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling NegotiationApi->get_ticker_by_id_v2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker_id** | **Integer**| Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API | 

### Return type

[**TickerById**](TickerById.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_negotiable_tickers**
> Array&lt;NegotiableTicker&gt; list_negotiable_tickers(wallet_id)

Lists the tickers that the trader can operate

Lists tickers that trader is able to operate. The list is determined by company's wallet and trader's permissions

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::NegotiationApi.new
wallet_id = 56 # Integer | Wallet identifier number.   Parameter **id** that was received in the response object of **/v1/wallets** in Wallets API


begin
  #Lists the tickers that the trader can operate
  result = api_instance.list_negotiable_tickers(wallet_id)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling NegotiationApi->list_negotiable_tickers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wallet_id** | **Integer**| Wallet identifier number.   Parameter **id** that was received in the response object of **/v1/wallets** in Wallets API | 

### Return type

[**Array&lt;NegotiableTicker&gt;**](NegotiableTicker.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_tickers**
> Array&lt;Ticker&gt; list_tickers(opts)

List tickers

List all tickers regardless of whether it's in the company's wallet or user's permissions. You can filter by status or description

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::NegotiationApi.new
opts = { 
  page: 56, # Integer | Pagination (by default search for all elements)
  items_per_page: 56, # Integer | Number of items per page (default 10)
  status: true, # BOOLEAN | Filter the tickers by status value
  description: 'description_example' # String | Filter the tickers by description value
}

begin
  #List tickers
  result = api_instance.list_tickers(opts)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling NegotiationApi->list_tickers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Pagination (by default search for all elements) | [optional] 
 **items_per_page** | **Integer**| Number of items per page (default 10) | [optional] 
 **status** | **BOOLEAN**| Filter the tickers by status value | [optional] 
 **description** | **String**| Filter the tickers by description value | [optional] 

### Return type

[**Array&lt;Ticker&gt;**](Ticker.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **list_tickers_v2**
> Array&lt;Ticker&gt; list_tickers_v2(opts)

List tickers

Lists all tickers regardless of whether it's in the company's wallet or user's permissions. You can filter by status or description

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::NegotiationApi.new
opts = { 
  page: 56, # Integer | Pagination (by default search for all elements)
  items_per_page: 56, # Integer | Number of items per page (default 10)
  status: true, # BOOLEAN | Filter the tickers by status value
  description: 'description_example' # String | Filter the tickers by description value
}

begin
  #List tickers
  result = api_instance.list_tickers_v2(opts)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling NegotiationApi->list_tickers_v2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Pagination (by default search for all elements) | [optional] 
 **items_per_page** | **Integer**| Number of items per page (default 10) | [optional] 
 **status** | **BOOLEAN**| Filter the tickers by status value | [optional] 
 **description** | **String**| Filter the tickers by description value | [optional] 

### Return type

[**Array&lt;Ticker&gt;**](Ticker.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



