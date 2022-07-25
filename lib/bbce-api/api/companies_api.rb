=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

module BbceApi
  class CompaniesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Company by Identification
    # Get a specific company information by using a companyId
    # @param company_id 
    # @param [Hash] opts the optional parameters
    # @return [Company]
    def get_company_by_id(company_id, opts = {})
      data, _status_code, _headers = get_company_by_id_with_http_info(company_id, opts)
      data
    end

    # Get Company by Identification
    # Get a specific company information by using a companyId
    # @param company_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Company, Integer, Hash)>] Company data, response status code and response headers
    def get_company_by_id_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompaniesApi.get_company_by_id ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling CompaniesApi.get_company_by_id"
      end
      # resource path
      local_var_path = '/v1/companies/{companyId}'.sub('{' + 'companyId' + '}', company_id.to_s)

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

      return_type = opts[:return_type] || 'Company' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#get_company_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Company by Identification
    # Get a specific company information by using a companyId
    # @param company_id 
    # @param [Hash] opts the optional parameters
    # @return [Company]
    def get_company_by_id_v2(company_id, opts = {})
      data, _status_code, _headers = get_company_by_id_v2_with_http_info(company_id, opts)
      data
    end

    # Get Company by Identification
    # Get a specific company information by using a companyId
    # @param company_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Company, Integer, Hash)>] Company data, response status code and response headers
    def get_company_by_id_v2_with_http_info(company_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompaniesApi.get_company_by_id_v2 ...'
      end
      # verify the required parameter 'company_id' is set
      if @api_client.config.client_side_validation && company_id.nil?
        fail ArgumentError, "Missing the required parameter 'company_id' when calling CompaniesApi.get_company_by_id_v2"
      end
      # resource path
      local_var_path = '/v2/companies/{companyId}'.sub('{' + 'companyId' + '}', company_id.to_s)

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

      return_type = opts[:return_type] || 'Company' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#get_company_by_id_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Companies
    # The Companies API is used when you want to receive companies information. It's possible to specify the company or receive information on a specific status
    # @param [Hash] opts the optional parameters
    # @option opts [String] :trade_name Company trade name
    # @option opts [String] :status Company status
    # @return [Array<Company>]
    def list_companies(opts = {})
      data, _status_code, _headers = list_companies_with_http_info(opts)
      data
    end

    # List Companies
    # The Companies API is used when you want to receive companies information. It&#x27;s possible to specify the company or receive information on a specific status
    # @param [Hash] opts the optional parameters
    # @option opts [String] :trade_name Company trade name
    # @option opts [String] :status Company status
    # @return [Array<(Array<Company>, Integer, Hash)>] Array<Company> data, response status code and response headers
    def list_companies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompaniesApi.list_companies ...'
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['Ativa', 'Bloqueada', 'BloqueadaParcialmente'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of Ativa, Bloqueada, BloqueadaParcialmente'
      end
      # resource path
      local_var_path = '/v1/companies'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'tradeName'] = opts[:'trade_name'] if !opts[:'trade_name'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<Company>' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#list_companies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Companies
    # The Companies API is used when you want to receive companies information. It's possible to specify the company or receive information on a specific status
    # @param [Hash] opts the optional parameters
    # @option opts [String] :trade_name Company trade name
    # @option opts [String] :status Company status
    # @return [Array<Company>]
    def list_companies_v2(opts = {})
      data, _status_code, _headers = list_companies_v2_with_http_info(opts)
      data
    end

    # List Companies
    # The Companies API is used when you want to receive companies information. It&#x27;s possible to specify the company or receive information on a specific status
    # @param [Hash] opts the optional parameters
    # @option opts [String] :trade_name Company trade name
    # @option opts [String] :status Company status
    # @return [Array<(Array<Company>, Integer, Hash)>] Array<Company> data, response status code and response headers
    def list_companies_v2_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CompaniesApi.list_companies_v2 ...'
      end
      if @api_client.config.client_side_validation && opts[:'status'] && !['Ativa', 'Bloqueada', 'BloqueadaParcialmente'].include?(opts[:'status'])
        fail ArgumentError, 'invalid value for "status", must be one of Ativa, Bloqueada, BloqueadaParcialmente'
      end
      # resource path
      local_var_path = '/v2/companies'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'tradeName'] = opts[:'trade_name'] if !opts[:'trade_name'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<Company>' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CompaniesApi#list_companies_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
