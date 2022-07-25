=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

module BbceApi
  class LimitsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get current limit between companies
    # This API is used to control a bilateral limit between companies. You can get current purchase and sale consume limit and its percentage
    # @param product_link_id Product Link identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<BilateralCompanyLimit>]
    def get_bilateral_company_limit(product_link_id, opts = {})
      data, _status_code, _headers = get_bilateral_company_limit_with_http_info(product_link_id, opts)
      data
    end

    # Get current limit between companies
    # This API is used to control a bilateral limit between companies. You can get current purchase and sale consume limit and its percentage
    # @param product_link_id Product Link identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<BilateralCompanyLimit>, Integer, Hash)>] Array<BilateralCompanyLimit> data, response status code and response headers
    def get_bilateral_company_limit_with_http_info(product_link_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LimitsApi.get_bilateral_company_limit ...'
      end
      # verify the required parameter 'product_link_id' is set
      if @api_client.config.client_side_validation && product_link_id.nil?
        fail ArgumentError, "Missing the required parameter 'product_link_id' when calling LimitsApi.get_bilateral_company_limit"
      end
      # resource path
      local_var_path = '/v1/bilateral-company/{productLinkId}'.sub('{' + 'productLinkId' + '}', product_link_id.to_s)

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

      return_type = opts[:return_type] || 'Array<BilateralCompanyLimit>' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LimitsApi#get_bilateral_company_limit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a ProductLink Bilateral Limit between companies
    # This API is used to create a new bilateral limit between companies
    # @param body Create a ProductLink Bilateral Limit between companies
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def post_bilateral_company_limit(body, opts = {})
      post_bilateral_company_limit_with_http_info(body, opts)
      nil
    end

    # Create a ProductLink Bilateral Limit between companies
    # This API is used to create a new bilateral limit between companies
    # @param body Create a ProductLink Bilateral Limit between companies
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def post_bilateral_company_limit_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LimitsApi.post_bilateral_company_limit ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling LimitsApi.post_bilateral_company_limit"
      end
      # resource path
      local_var_path = '/v1/bilateral-company'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

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
        @api_client.config.logger.debug "API called: LimitsApi#post_bilateral_company_limit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
