=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

module BbceApi
  class NegotiationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Ticker by Identification
    # Get Ticker by Identification
    # @param ticker_id Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
    # @param [Hash] opts the optional parameters
    # @return [Ticker]
    def get_ticker_by_id(ticker_id, opts = {})
      data, _status_code, _headers = get_ticker_by_id_with_http_info(ticker_id, opts)
      data
    end

    # Get Ticker by Identification
    # Get Ticker by Identification
    # @param ticker_id Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
    # @param [Hash] opts the optional parameters
    # @return [Array<(Ticker, Integer, Hash)>] Ticker data, response status code and response headers
    def get_ticker_by_id_with_http_info(ticker_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NegotiationApi.get_ticker_by_id ...'
      end
      # verify the required parameter 'ticker_id' is set
      if @api_client.config.client_side_validation && ticker_id.nil?
        fail ArgumentError, "Missing the required parameter 'ticker_id' when calling NegotiationApi.get_ticker_by_id"
      end
      # resource path
      local_var_path = '/v1/tickers/{tickerId}'.sub('{' + 'tickerId' + '}', ticker_id.to_s)

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

      return_type = opts[:return_type] || 'Ticker' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NegotiationApi#get_ticker_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Ticker by Identification
    # Get Ticker by Identification
    # @param ticker_id Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
    # @param [Hash] opts the optional parameters
    # @return [TickerById]
    def get_ticker_by_id_v2(ticker_id, opts = {})
      data, _status_code, _headers = get_ticker_by_id_v2_with_http_info(ticker_id, opts)
      data
    end

    # Get Ticker by Identification
    # Get Ticker by Identification
    # @param ticker_id Ticker identifier number.   Parameter **id** that was received in the response object of **/v2/tickers** in Negotiation API
    # @param [Hash] opts the optional parameters
    # @return [Array<(TickerById, Integer, Hash)>] TickerById data, response status code and response headers
    def get_ticker_by_id_v2_with_http_info(ticker_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NegotiationApi.get_ticker_by_id_v2 ...'
      end
      # verify the required parameter 'ticker_id' is set
      if @api_client.config.client_side_validation && ticker_id.nil?
        fail ArgumentError, "Missing the required parameter 'ticker_id' when calling NegotiationApi.get_ticker_by_id_v2"
      end
      # resource path
      local_var_path = '/v2/tickers/{tickerId}'.sub('{' + 'tickerId' + '}', ticker_id.to_s)

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

      return_type = opts[:return_type] || 'TickerById' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NegotiationApi#get_ticker_by_id_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Lists the tickers that the trader can operate
    # Lists tickers that trader is able to operate. The list is determined by company's wallet and trader's permissions
    # @param wallet_id Wallet identifier number.   Parameter **id** that was received in the response object of **/v1/wallets** in Wallets API
    # @param [Hash] opts the optional parameters
    # @return [Array<NegotiableTicker>]
    def list_negotiable_tickers(wallet_id, opts = {})
      data, _status_code, _headers = list_negotiable_tickers_with_http_info(wallet_id, opts)
      data
    end

    # Lists the tickers that the trader can operate
    # Lists tickers that trader is able to operate. The list is determined by company&#x27;s wallet and trader&#x27;s permissions
    # @param wallet_id Wallet identifier number.   Parameter **id** that was received in the response object of **/v1/wallets** in Wallets API
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<NegotiableTicker>, Integer, Hash)>] Array<NegotiableTicker> data, response status code and response headers
    def list_negotiable_tickers_with_http_info(wallet_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NegotiationApi.list_negotiable_tickers ...'
      end
      # verify the required parameter 'wallet_id' is set
      if @api_client.config.client_side_validation && wallet_id.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_id' when calling NegotiationApi.list_negotiable_tickers"
      end
      # resource path
      local_var_path = '/v1/negotiable-tickers'

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

      return_type = opts[:return_type] || 'Array<NegotiableTicker>' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NegotiationApi#list_negotiable_tickers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List tickers
    # List all tickers regardless of whether it's in the company's wallet or user's permissions. You can filter by status or description
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Pagination (by default search for all elements)
    # @option opts [Integer] :items_per_page Number of items per page (default 10)
    # @option opts [BOOLEAN] :status Filter the tickers by status value
    # @option opts [String] :description Filter the tickers by description value
    # @return [Array<Ticker>]
    def list_tickers(opts = {})
      data, _status_code, _headers = list_tickers_with_http_info(opts)
      data
    end

    # List tickers
    # List all tickers regardless of whether it&#x27;s in the company&#x27;s wallet or user&#x27;s permissions. You can filter by status or description
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Pagination (by default search for all elements)
    # @option opts [Integer] :items_per_page Number of items per page (default 10)
    # @option opts [BOOLEAN] :status Filter the tickers by status value
    # @option opts [String] :description Filter the tickers by description value
    # @return [Array<(Array<Ticker>, Integer, Hash)>] Array<Ticker> data, response status code and response headers
    def list_tickers_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NegotiationApi.list_tickers ...'
      end
      # resource path
      local_var_path = '/v1/tickers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'description'] = opts[:'description'] if !opts[:'description'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      header_params[:'items-per-page'] = opts[:'items_per_page'] if !opts[:'items_per_page'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<Ticker>' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NegotiationApi#list_tickers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List tickers
    # Lists all tickers regardless of whether it's in the company's wallet or user's permissions. You can filter by status or description
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Pagination (by default search for all elements)
    # @option opts [Integer] :items_per_page Number of items per page (default 10)
    # @option opts [BOOLEAN] :status Filter the tickers by status value
    # @option opts [String] :description Filter the tickers by description value
    # @return [Array<Ticker>]
    def list_tickers_v2(opts = {})
      data, _status_code, _headers = list_tickers_v2_with_http_info(opts)
      data
    end

    # List tickers
    # Lists all tickers regardless of whether it&#x27;s in the company&#x27;s wallet or user&#x27;s permissions. You can filter by status or description
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Pagination (by default search for all elements)
    # @option opts [Integer] :items_per_page Number of items per page (default 10)
    # @option opts [BOOLEAN] :status Filter the tickers by status value
    # @option opts [String] :description Filter the tickers by description value
    # @return [Array<(Array<Ticker>, Integer, Hash)>] Array<Ticker> data, response status code and response headers
    def list_tickers_v2_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NegotiationApi.list_tickers_v2 ...'
      end
      # resource path
      local_var_path = '/v2/tickers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'description'] = opts[:'description'] if !opts[:'description'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      header_params[:'items-per-page'] = opts[:'items_per_page'] if !opts[:'items_per_page'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<Ticker>' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NegotiationApi#list_tickers_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
