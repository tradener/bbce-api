=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

module BbceApi
  class MatchesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List company's matches
    # This API returns a list of company's own matches. You can filter by period.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :last_resource_key Primary key of the last resource returned
    # @option opts [String] :initial_period The initial ISO String Date to filter values
    # @option opts [String] :final_period The final ISO String Date to filter values
    # @return [Array<Match>]
    def list_matches(opts = {})
      data, _status_code, _headers = list_matches_with_http_info(opts)
      data
    end

    # List company&#x27;s matches
    # This API returns a list of company&#x27;s own matches. You can filter by period.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :last_resource_key Primary key of the last resource returned
    # @option opts [String] :initial_period The initial ISO String Date to filter values
    # @option opts [String] :final_period The final ISO String Date to filter values
    # @return [Array<(Array<Match>, Integer, Hash)>] Array<Match> data, response status code and response headers
    def list_matches_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: MatchesApi.list_matches ...'
      end
      # resource path
      local_var_path = '/v1/matches'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'initialPeriod'] = opts[:'initial_period'] if !opts[:'initial_period'].nil?
      query_params[:'finalPeriod'] = opts[:'final_period'] if !opts[:'final_period'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'last-resource-key'] = opts[:'last_resource_key'] if !opts[:'last_resource_key'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<Match>' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MatchesApi#list_matches\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
