=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

module BbceApi
  class DetailedRegistriesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a detailed registry
    # This API is used when you want to create a detailed registry, witch means this registry can be customized whereas the standard registry cannot
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Registry]
    def create_detailed_registry(body, opts = {})
      data, _status_code, _headers = create_detailed_registry_with_http_info(body, opts)
      data
    end

    # Create a detailed registry
    # This API is used when you want to create a detailed registry, witch means this registry can be customized whereas the standard registry cannot
    # @param body 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Registry, Integer, Hash)>] Registry data, response status code and response headers
    def create_detailed_registry_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DetailedRegistriesApi.create_detailed_registry ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DetailedRegistriesApi.create_detailed_registry"
      end
      # resource path
      local_var_path = '/v1/detailed-registries'

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
        @api_client.config.logger.debug "API called: DetailedRegistriesApi#create_detailed_registry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
