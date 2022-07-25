=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

module BbceApi
  class RegistriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Approve a registry
    # This API is used when a counterparty creates a registry with you. To complete the Deal you will need to approve it
    # @param body 
    # @param registry_id Registry identifier
    # @param [Hash] opts the optional parameters
    # @return [Registry]
    def approve_registry(body, registry_id, opts = {})
      data, _status_code, _headers = approve_registry_with_http_info(body, registry_id, opts)
      data
    end

    # Approve a registry
    # This API is used when a counterparty creates a registry with you. To complete the Deal you will need to approve it
    # @param body 
    # @param registry_id Registry identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(Registry, Integer, Hash)>] Registry data, response status code and response headers
    def approve_registry_with_http_info(body, registry_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegistriesApi.approve_registry ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RegistriesApi.approve_registry"
      end
      # verify the required parameter 'registry_id' is set
      if @api_client.config.client_side_validation && registry_id.nil?
        fail ArgumentError, "Missing the required parameter 'registry_id' when calling RegistriesApi.approve_registry"
      end
      # resource path
      local_var_path = '/v1/registries/{registryId}/approve'.sub('{' + 'registryId' + '}', registry_id.to_s)

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

      return_type = opts[:return_type] || 'Registry' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegistriesApi#approve_registry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a registry
    # The Registry API is used when you want to create a standard registry. You need to inform your counterparty the moment you create your registry
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Registry]
    def create_registry(body, opts = {})
      data, _status_code, _headers = create_registry_with_http_info(body, opts)
      data
    end

    # Create a registry
    # The Registry API is used when you want to create a standard registry. You need to inform your counterparty the moment you create your registry
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Registry, Integer, Hash)>] Registry data, response status code and response headers
    def create_registry_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegistriesApi.create_registry ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling RegistriesApi.create_registry"
      end
      # resource path
      local_var_path = '/v1/registries'

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

      return_type = opts[:return_type] || 'Registry' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegistriesApi#create_registry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns list of registries
    # This API returns a list of registries of a specific wallet. You can filter by date
    # @param wallet_id Wallet identifier number.   Parameter **id** that was received in the response object of **/v1/wallets** in Wallets API
    # @param [Hash] opts the optional parameters
    # @option opts [String] :end_date The final ISO String Date to filter values
    # @option opts [String] :start_date The initial ISO String Date to filter values
    # @option opts [String] :last_resource_key Primary key of the last resource returned
    # @return [Array<Registry>]
    def list_registries(wallet_id, opts = {})
      data, _status_code, _headers = list_registries_with_http_info(wallet_id, opts)
      data
    end

    # Returns list of registries
    # This API returns a list of registries of a specific wallet. You can filter by date
    # @param wallet_id Wallet identifier number.   Parameter **id** that was received in the response object of **/v1/wallets** in Wallets API
    # @param [Hash] opts the optional parameters
    # @option opts [String] :end_date The final ISO String Date to filter values
    # @option opts [String] :start_date The initial ISO String Date to filter values
    # @option opts [String] :last_resource_key Primary key of the last resource returned
    # @return [Array<(Array<Registry>, Integer, Hash)>] Array<Registry> data, response status code and response headers
    def list_registries_with_http_info(wallet_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RegistriesApi.list_registries ...'
      end
      # verify the required parameter 'wallet_id' is set
      if @api_client.config.client_side_validation && wallet_id.nil?
        fail ArgumentError, "Missing the required parameter 'wallet_id' when calling RegistriesApi.list_registries"
      end
      # resource path
      local_var_path = '/v1/registries'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'walletId'] = wallet_id
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'last-resource-key'] = opts[:'last_resource_key'] if !opts[:'last_resource_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<Registry>' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RegistriesApi#list_registries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
