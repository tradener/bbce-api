=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

module BbceApi
  class LinkApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the list of links with product feature and underlying asset
    # Returns the list of links with product feature and underlying asset
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Pagination (by default search for all elements)
    # @option opts [Integer] :items_per_page Number of items per page (default 10)
    # @return [Array<ProductLink>]
    def get_link(opts = {})
      data, _status_code, _headers = get_link_with_http_info(opts)
      data
    end

    # Returns the list of links with product feature and underlying asset
    # Returns the list of links with product feature and underlying asset
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Pagination (by default search for all elements)
    # @option opts [Integer] :items_per_page Number of items per page (default 10)
    # @return [Array<(Array<ProductLink>, Integer, Hash)>] Array<ProductLink> data, response status code and response headers
    def get_link_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LinkApi.get_link ...'
      end
      # resource path
      local_var_path = '/v1/link'

      # query parameters
      query_params = opts[:query_params] || {}

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

      return_type = opts[:return_type] || 'Array<ProductLink>' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LinkApi#get_link\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
