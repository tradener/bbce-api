=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

module BbceApi
  class OrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Activate a suspended order
    # This API is used when you want a specific suspended order to be active again. In this case, the order will return as opened
    # @param ticker_id Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
    # @param order_id Order identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def activate_order(ticker_id, order_id, opts = {})
      activate_order_with_http_info(ticker_id, order_id, opts)
      nil
    end

    # Activate a suspended order
    # This API is used when you want a specific suspended order to be active again. In this case, the order will return as opened
    # @param ticker_id Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
    # @param order_id Order identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def activate_order_with_http_info(ticker_id, order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.activate_order ...'
      end
      # verify the required parameter 'ticker_id' is set
      if @api_client.config.client_side_validation && ticker_id.nil?
        fail ArgumentError, "Missing the required parameter 'ticker_id' when calling OrdersApi.activate_order"
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrdersApi.activate_order"
      end
      # resource path
      local_var_path = '/v1/orders/{tickerId}/{orderId}/activate'.sub('{' + 'tickerId' + '}', ticker_id.to_s).sub('{' + 'orderId' + '}', order_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#activate_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Activate suspended orders
    # This API is used when you want all suspended orders of a specific Wallet to be activate
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def activate_orders_in_batch(body, opts = {})
      activate_orders_in_batch_with_http_info(body, opts)
      nil
    end

    # Activate suspended orders
    # This API is used when you want all suspended orders of a specific Wallet to be activate
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def activate_orders_in_batch_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.activate_orders_in_batch ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling OrdersApi.activate_orders_in_batch"
      end
      # resource path
      local_var_path = '/v1/orders/activate-all'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#activate_orders_in_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Cancel a suspended or opened order
    # This API is used to cancel an order. The order must be open or suspended in order to cancel it
    # @param ticker_id Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
    # @param order_id Order identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def cancel_order(ticker_id, order_id, opts = {})
      cancel_order_with_http_info(ticker_id, order_id, opts)
      nil
    end

    # Cancel a suspended or opened order
    # This API is used to cancel an order. The order must be open or suspended in order to cancel it
    # @param ticker_id Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
    # @param order_id Order identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def cancel_order_with_http_info(ticker_id, order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.cancel_order ...'
      end
      # verify the required parameter 'ticker_id' is set
      if @api_client.config.client_side_validation && ticker_id.nil?
        fail ArgumentError, "Missing the required parameter 'ticker_id' when calling OrdersApi.cancel_order"
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrdersApi.cancel_order"
      end
      # resource path
      local_var_path = '/v1/orders/{tickerId}/{orderId}/cancel'.sub('{' + 'tickerId' + '}', ticker_id.to_s).sub('{' + 'orderId' + '}', order_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#cancel_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Cancel all suspended or opened orders
    # This API is used to cancel all opened and suspended company's orders
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def cancel_orders_in_batch(opts = {})
      cancel_orders_in_batch_with_http_info(opts)
      nil
    end

    # Cancel all suspended or opened orders
    # This API is used to cancel all opened and suspended company&#x27;s orders
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def cancel_orders_in_batch_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.cancel_orders_in_batch ...'
      end
      # resource path
      local_var_path = '/v1/orders/cancellation-all'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#cancel_orders_in_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a purchase order
    # This API is used to create a purchase order
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def create_purchase_order(body, opts = {})
      data, _status_code, _headers = create_purchase_order_with_http_info(body, opts)
      data
    end

    # Create a purchase order
    # This API is used to create a purchase order
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Order, Integer, Hash)>] Order data, response status code and response headers
    def create_purchase_order_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.create_purchase_order ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling OrdersApi.create_purchase_order"
      end
      # resource path
      local_var_path = '/v1/purchases-order'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'Order' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#create_purchase_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a sales order
    # This API is used to create a sales order
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Order]
    def create_sales_order(body, opts = {})
      data, _status_code, _headers = create_sales_order_with_http_info(body, opts)
      data
    end

    # Create a sales order
    # This API is used to create a sales order
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Order, Integer, Hash)>] Order data, response status code and response headers
    def create_sales_order_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.create_sales_order ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling OrdersApi.create_sales_order"
      end
      # resource path
      local_var_path = '/v1/sales-order'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'Order' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#create_sales_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Edit a suspended or opened order
    # This API is used to edit an order. You can only edit opened or suspended orders
    # @param body 
    # @param order_id Order identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def edit_order(body, order_id, opts = {})
      edit_order_with_http_info(body, order_id, opts)
      nil
    end

    # Edit a suspended or opened order
    # This API is used to edit an order. You can only edit opened or suspended orders
    # @param body 
    # @param order_id Order identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def edit_order_with_http_info(body, order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.edit_order ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling OrdersApi.edit_order"
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrdersApi.edit_order"
      end
      # resource path
      local_var_path = '/v1/orders/{orderId}/edit'.sub('{' + 'orderId' + '}', order_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#edit_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return the current book for given ticker
    # This API is used to receive the current book for a specific ticker
    # @param ticker_id Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
    # @param wallet_id Wallet identifier number.   Parameter **id** that was received in the response object of **/v1/wallets** in Wallets API
    # @param [Hash] opts the optional parameters
    # @return [OffersBook]
    def get_book(ticker_id, wallet_id, opts = {})
      data, _status_code, _headers = get_book_with_http_info(ticker_id, wallet_id, opts)
      data
    end

    # Return the current book for given ticker
    # This API is used to receive the current book for a specific ticker
    # @param ticker_id Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
    # @param wallet_id Wallet identifier number.   Parameter **id** that was received in the response object of **/v1/wallets** in Wallets API
    # @param [Hash] opts the optional parameters
    # @return [Array<(OffersBook, Integer, Hash)>] OffersBook data, response status code and response headers
    def get_book_with_http_info(ticker_id, wallet_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.get_book ...'
      end
      # verify the required parameter 'ticker_id' is set
      if @api_client.config.client_side_validation && ticker_id.nil?
        fail ArgumentError, "Missing the required parameter 'ticker_id' when calling OrdersApi.get_book"
      end
      # verify the required parameter 'wallet_id' is set
      if @api_client.config.client_side_validation && wallet_id.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_id' when calling OrdersApi.get_book"
      end
      # resource path
      local_var_path = '/v1/book/{tickerId}'.sub('{' + 'tickerId' + '}', ticker_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'walletId'] = wallet_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'OffersBook' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#get_book\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return the daily negotiation prices for given ticker
    # This API is used to receive daily negotiation prices for a giver ticker. You will receive minimum, maximum, first and last prices
    # @param ticker_id Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
    # @param [Hash] opts the optional parameters
    # @return [NegotiationData]
    def get_negotiation_data(ticker_id, opts = {})
      data, _status_code, _headers = get_negotiation_data_with_http_info(ticker_id, opts)
      data
    end

    # Return the daily negotiation prices for given ticker
    # This API is used to receive daily negotiation prices for a giver ticker. You will receive minimum, maximum, first and last prices
    # @param ticker_id Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
    # @param [Hash] opts the optional parameters
    # @return [Array<(NegotiationData, Integer, Hash)>] NegotiationData data, response status code and response headers
    def get_negotiation_data_with_http_info(ticker_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.get_negotiation_data ...'
      end
      # verify the required parameter 'ticker_id' is set
      if @api_client.config.client_side_validation && ticker_id.nil?
        fail ArgumentError, "Missing the required parameter 'ticker_id' when calling OrdersApi.get_negotiation_data"
      end
      # resource path
      local_var_path = '/v1/negotiation-data/{tickerId}'.sub('{' + 'tickerId' + '}', ticker_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'NegotiationData' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#get_negotiation_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return list of my own orders
    # This API returns a list of user's own orders. You can filter by period or a specific status
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :product_id Product identifier not obligatory
    # @option opts [Integer] :link_id Stamp Product identifier
    # @option opts [String] :initial_period The initial ISO String Date to filter values
    # @option opts [String] :final_period The final ISO String Date to filter values
    # @option opts [String] :status Order status
    # @option opts [String] :position Purchase or Sales order operation type
    # @option opts [String] :last_resource_key Primary key of the last resource returned
    # @return [Array<OrderReport>]
    def get_orders(opts = {})
      data, _status_code, _headers = get_orders_with_http_info(opts)
      data
    end

    # Return list of my own orders
    # This API returns a list of user&#x27;s own orders. You can filter by period or a specific status
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :product_id Product identifier not obligatory
    # @option opts [Integer] :link_id Stamp Product identifier
    # @option opts [String] :initial_period The initial ISO String Date to filter values
    # @option opts [String] :final_period The final ISO String Date to filter values
    # @option opts [String] :status Order status
    # @option opts [String] :position Purchase or Sales order operation type
    # @option opts [String] :last_resource_key Primary key of the last resource returned
    # @return [Array<(Array<OrderReport>, Integer, Hash)>] Array<OrderReport> data, response status code and response headers
    def get_orders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.get_orders ...'
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['Recebida', 'Aberta', 'Cancelada', 'Suspensa', 'Finalizada'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of Recebida, Aberta, Cancelada, Suspensa, Finalizada'
      end
      if @api_client.config.client_side_validation && opts[:'position'] && !['Ordem de Compra', 'Ordem de Venda'].include?(opts[:'position'])
        fail ArgumentError, 'invalid value for "position", must be one of Ordem de Compra, Ordem de Venda'
      end
      # resource path
      local_var_path = '/v1/orders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'productId'] = opts[:'product_id'] if !opts[:'product_id'].nil?
      query_params[:'linkId'] = opts[:'link_id'] if !opts[:'link_id'].nil?
      query_params[:'initialPeriod'] = opts[:'initial_period'] if !opts[:'initial_period'].nil?
      query_params[:'finalPeriod'] = opts[:'final_period'] if !opts[:'final_period'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'position'] = opts[:'position'] if !opts[:'position'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'last-resource-key'] = opts[:'last_resource_key'] if !opts[:'last_resource_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<OrderReport>' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#get_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Suspend an opened order
    # This API is used when you want to suspend an opened order
    # @param ticker_id Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
    # @param order_id Order identifier
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def suspend_order(ticker_id, order_id, opts = {})
      suspend_order_with_http_info(ticker_id, order_id, opts)
      nil
    end

    # Suspend an opened order
    # This API is used when you want to suspend an opened order
    # @param ticker_id Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
    # @param order_id Order identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def suspend_order_with_http_info(ticker_id, order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.suspend_order ...'
      end
      # verify the required parameter 'ticker_id' is set
      if @api_client.config.client_side_validation && ticker_id.nil?
        fail ArgumentError, "Missing the required parameter 'ticker_id' when calling OrdersApi.suspend_order"
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrdersApi.suspend_order"
      end
      # resource path
      local_var_path = '/v1/orders/{tickerId}/{orderId}/suspend'.sub('{' + 'tickerId' + '}', ticker_id.to_s).sub('{' + 'orderId' + '}', order_id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#suspend_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Suspend opened orders
    # This API is used to suspend all opened orders of a specific wallet
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def suspend_orders_in_batch(body, opts = {})
      suspend_orders_in_batch_with_http_info(body, opts)
      nil
    end

    # Suspend opened orders
    # This API is used to suspend all opened orders of a specific wallet
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def suspend_orders_in_batch_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrdersApi.suspend_orders_in_batch ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling OrdersApi.suspend_orders_in_batch"
      end
      # resource path
      local_var_path = '/v1/orders/suspend-all'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#suspend_orders_in_batch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
