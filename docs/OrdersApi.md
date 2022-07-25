# BbceApi::OrdersApi

All URIs are relative to */bus*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_order**](OrdersApi.md#activate_order) | **POST** /v1/orders/{tickerId}/{orderId}/activate | Activate a suspended order
[**activate_orders_in_batch**](OrdersApi.md#activate_orders_in_batch) | **POST** /v1/orders/activate-all | Activate suspended orders
[**cancel_order**](OrdersApi.md#cancel_order) | **POST** /v1/orders/{tickerId}/{orderId}/cancel | Cancel a suspended or opened order
[**cancel_orders_in_batch**](OrdersApi.md#cancel_orders_in_batch) | **POST** /v1/orders/cancellation-all | Cancel all suspended or opened orders
[**create_purchase_order**](OrdersApi.md#create_purchase_order) | **POST** /v1/purchases-order | Create a purchase order
[**create_sales_order**](OrdersApi.md#create_sales_order) | **POST** /v1/sales-order | Create a sales order
[**edit_order**](OrdersApi.md#edit_order) | **POST** /v1/orders/{orderId}/edit | Edit a suspended or opened order
[**get_book**](OrdersApi.md#get_book) | **GET** /v1/book/{tickerId} | Return the current book for given ticker
[**get_negotiation_data**](OrdersApi.md#get_negotiation_data) | **GET** /v1/negotiation-data/{tickerId} | Return the daily negotiation prices for given ticker
[**get_orders**](OrdersApi.md#get_orders) | **GET** /v1/orders | Return list of my own orders
[**suspend_order**](OrdersApi.md#suspend_order) | **POST** /v1/orders/{tickerId}/{orderId}/suspend | Suspend an opened order
[**suspend_orders_in_batch**](OrdersApi.md#suspend_orders_in_batch) | **POST** /v1/orders/suspend-all | Suspend opened orders

# **activate_order**
> activate_order(ticker_id, order_id)

Activate a suspended order

This API is used when you want a specific suspended order to be active again. In this case, the order will return as opened

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::OrdersApi.new
ticker_id = 56 # Integer | Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
order_id = 56 # Integer | Order identifier


begin
  #Activate a suspended order
  api_instance.activate_order(ticker_id, order_id)
rescue BbceApi::ApiError => e
  puts "Exception when calling OrdersApi->activate_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker_id** | **Integer**| Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API | 
 **order_id** | **Integer**| Order identifier | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **activate_orders_in_batch**
> activate_orders_in_batch(body)

Activate suspended orders

This API is used when you want all suspended orders of a specific Wallet to be activate

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::OrdersApi.new
body = BbceApi::ActionsInBatch.new # ActionsInBatch | 


begin
  #Activate suspended orders
  api_instance.activate_orders_in_batch(body)
rescue BbceApi::ApiError => e
  puts "Exception when calling OrdersApi->activate_orders_in_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ActionsInBatch**](ActionsInBatch.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



# **cancel_order**
> cancel_order(ticker_id, order_id)

Cancel a suspended or opened order

This API is used to cancel an order. The order must be open or suspended in order to cancel it

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::OrdersApi.new
ticker_id = 56 # Integer | Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
order_id = 56 # Integer | Order identifier


begin
  #Cancel a suspended or opened order
  api_instance.cancel_order(ticker_id, order_id)
rescue BbceApi::ApiError => e
  puts "Exception when calling OrdersApi->cancel_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker_id** | **Integer**| Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API | 
 **order_id** | **Integer**| Order identifier | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **cancel_orders_in_batch**
> cancel_orders_in_batch

Cancel all suspended or opened orders

This API is used to cancel all opened and suspended company's orders

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::OrdersApi.new

begin
  #Cancel all suspended or opened orders
  api_instance.cancel_orders_in_batch
rescue BbceApi::ApiError => e
  puts "Exception when calling OrdersApi->cancel_orders_in_batch: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_purchase_order**
> Order create_purchase_order(body)

Create a purchase order

This API is used to create a purchase order

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::OrdersApi.new
body = BbceApi::CreateOrder.new # CreateOrder | 


begin
  #Create a purchase order
  result = api_instance.create_purchase_order(body)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling OrdersApi->create_purchase_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrder**](CreateOrder.md)|  | 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



# **create_sales_order**
> Order create_sales_order(body)

Create a sales order

This API is used to create a sales order

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::OrdersApi.new
body = BbceApi::CreateOrder.new # CreateOrder | 


begin
  #Create a sales order
  result = api_instance.create_sales_order(body)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling OrdersApi->create_sales_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrder**](CreateOrder.md)|  | 

### Return type

[**Order**](Order.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



# **edit_order**
> edit_order(bodyorder_id)

Edit a suspended or opened order

This API is used to edit an order. You can only edit opened or suspended orders

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::OrdersApi.new
body = BbceApi::EditOrder.new # EditOrder | 
order_id = 56 # Integer | Order identifier


begin
  #Edit a suspended or opened order
  api_instance.edit_order(bodyorder_id)
rescue BbceApi::ApiError => e
  puts "Exception when calling OrdersApi->edit_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EditOrder**](EditOrder.md)|  | 
 **order_id** | **Integer**| Order identifier | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



# **get_book**
> OffersBook get_book(ticker_id, wallet_id)

Return the current book for given ticker

This API is used to receive the current book for a specific ticker

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::OrdersApi.new
ticker_id = 56 # Integer | Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
wallet_id = 56 # Integer | Wallet identifier number.   Parameter **id** that was received in the response object of **/v1/wallets** in Wallets API


begin
  #Return the current book for given ticker
  result = api_instance.get_book(ticker_id, wallet_id)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling OrdersApi->get_book: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker_id** | **Integer**| Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API | 
 **wallet_id** | **Integer**| Wallet identifier number.   Parameter **id** that was received in the response object of **/v1/wallets** in Wallets API | 

### Return type

[**OffersBook**](OffersBook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_negotiation_data**
> NegotiationData get_negotiation_data(ticker_id)

Return the daily negotiation prices for given ticker

This API is used to receive daily negotiation prices for a giver ticker. You will receive minimum, maximum, first and last prices

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::OrdersApi.new
ticker_id = 56 # Integer | Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API


begin
  #Return the daily negotiation prices for given ticker
  result = api_instance.get_negotiation_data(ticker_id)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling OrdersApi->get_negotiation_data: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker_id** | **Integer**| Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API | 

### Return type

[**NegotiationData**](NegotiationData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_orders**
> Array&lt;OrderReport&gt; get_orders(opts)

Return list of my own orders

This API returns a list of user's own orders. You can filter by period or a specific status

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::OrdersApi.new
opts = { 
  product_id: 56, # Integer | Product identifier not obligatory
  link_id: 56, # Integer | Stamp Product identifier
  initial_period: 'initial_period_example', # String | The initial ISO String Date to filter values
  final_period: 'final_period_example', # String | The final ISO String Date to filter values
  status: 'status_example', # String | Order status
  position: 'position_example', # String | Purchase or Sales order operation type
  last_resource_key: 'last_resource_key_example' # String | Primary key of the last resource returned
}

begin
  #Return list of my own orders
  result = api_instance.get_orders(opts)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling OrdersApi->get_orders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product_id** | **Integer**| Product identifier not obligatory | [optional] 
 **link_id** | **Integer**| Stamp Product identifier | [optional] 
 **initial_period** | **String**| The initial ISO String Date to filter values | [optional] 
 **final_period** | **String**| The final ISO String Date to filter values | [optional] 
 **status** | **String**| Order status | [optional] 
 **position** | **String**| Purchase or Sales order operation type | [optional] 
 **last_resource_key** | **String**| Primary key of the last resource returned | [optional] 

### Return type

[**Array&lt;OrderReport&gt;**](OrderReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **suspend_order**
> suspend_order(ticker_id, order_id)

Suspend an opened order

This API is used when you want to suspend an opened order

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::OrdersApi.new
ticker_id = 56 # Integer | Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
order_id = 56 # Integer | Order identifier


begin
  #Suspend an opened order
  api_instance.suspend_order(ticker_id, order_id)
rescue BbceApi::ApiError => e
  puts "Exception when calling OrdersApi->suspend_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticker_id** | **Integer**| Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API | 
 **order_id** | **Integer**| Order identifier | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **suspend_orders_in_batch**
> suspend_orders_in_batch(body)

Suspend opened orders

This API is used to suspend all opened orders of a specific wallet

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::OrdersApi.new
body = BbceApi::ActionsInBatch.new # ActionsInBatch | 


begin
  #Suspend opened orders
  api_instance.suspend_orders_in_batch(body)
rescue BbceApi::ApiError => e
  puts "Exception when calling OrdersApi->suspend_orders_in_batch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ActionsInBatch**](ActionsInBatch.md)|  | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



