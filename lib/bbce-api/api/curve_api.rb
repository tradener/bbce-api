=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

module BbceApi
  class CurveApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List FWD Curve
    # List FWD Curve according to reference date
    # @param reference_date The final ISO String Date to filter values
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Pagination (by default search for all elements)
    # @return [Array<Curve>]
    def get_bbce_fwd_curve(reference_date, opts = {})
      data, _status_code, _headers = get_bbce_fwd_curve_with_http_info(reference_date, opts)
      data
    end

    # List FWD Curve
    # List FWD Curve according to reference date
    # @param reference_date The final ISO String Date to filter values
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page Pagination (by default search for all elements)
    # @return [Array<(Array<Curve>, Integer, Hash)>] Array<Curve> data, response status code and response headers
    def get_bbce_fwd_curve_with_http_info(reference_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CurveApi.get_bbce_fwd_curve ...'
      end
      # verify the required parameter 'reference_date' is set
      if @api_client.config.client_side_validation && reference_date.nil?
        fail ArgumentError, "Missing the required parameter 'reference_date' when calling CurveApi.get_bbce_fwd_curve"
      end
      # resource path
      local_var_path = '/v1/curve/bbce-fwd'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'referenceDate'] = reference_date

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<Curve>' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurveApi#get_bbce_fwd_curve\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
