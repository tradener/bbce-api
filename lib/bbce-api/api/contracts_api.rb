=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

module BbceApi
  class ContractsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns a base64 string for PDF generation
    # The API is used to download a PDF file of a specific contract
    # @param contract_id Contract identifier
    # @param [Hash] opts the optional parameters
    # @return [String]
    def download_contract(contract_id, opts = {})
      data, _status_code, _headers = download_contract_with_http_info(contract_id, opts)
      data
    end

    # Returns a base64 string for PDF generation
    # The API is used to download a PDF file of a specific contract
    # @param contract_id Contract identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def download_contract_with_http_info(contract_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContractsApi.download_contract ...'
      end
      # verify the required parameter 'contract_id' is set
      if @api_client.config.client_side_validation && contract_id.nil?
        fail ArgumentError, "Missing the required parameter 'contract_id' when calling ContractsApi.download_contract"
      end
      # resource path
      local_var_path = '/v1/contracts/{contractId}/download'.sub('{' + 'contractId' + '}', contract_id.to_s)

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

      return_type = opts[:return_type] || 'String' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#download_contract\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a base64 string for PDF generation
    # The API is used to download a PDF file of a specific contract
    # @param contract_number Parameter contractNumber that was received in the response object of **/v1/matches** in Matches API.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def download_contract_by_number(contract_number, opts = {})
      data, _status_code, _headers = download_contract_by_number_with_http_info(contract_number, opts)
      data
    end

    # Returns a base64 string for PDF generation
    # The API is used to download a PDF file of a specific contract
    # @param contract_number Parameter contractNumber that was received in the response object of **/v1/matches** in Matches API.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def download_contract_by_number_with_http_info(contract_number, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContractsApi.download_contract_by_number ...'
      end
      # verify the required parameter 'contract_number' is set
      if @api_client.config.client_side_validation && contract_number.nil?
        fail ArgumentError, "Missing the required parameter 'contract_number' when calling ContractsApi.download_contract_by_number"
      end
      # resource path
      local_var_path = '/v1/contracts/download'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'contractNumber'] = contract_number

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'String' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#download_contract_by_number\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of all deals
    # This API returns a list of all deals. You can filter by period or operation type
    # @param [Hash] opts the optional parameters
    # @option opts [String] :initial_period The initial ISO String Date to filter values
    # @option opts [String] :final_period The final ISO String Date to filter values
    # @option opts [Integer] :page Pagination (by default search for all elements)
    # @option opts [String] :origin_operation_type Operation Type
    # @return [Array<AllBusinessReport>]
    def get_customer_all_business_report(opts = {})
      data, _status_code, _headers = get_customer_all_business_report_with_http_info(opts)
      data
    end

    # Returns a list of all deals
    # This API returns a list of all deals. You can filter by period or operation type
    # @param [Hash] opts the optional parameters
    # @option opts [String] :initial_period The initial ISO String Date to filter values
    # @option opts [String] :final_period The final ISO String Date to filter values
    # @option opts [Integer] :page Pagination (by default search for all elements)
    # @option opts [String] :origin_operation_type Operation Type
    # @return [Array<(Array<AllBusinessReport>, Integer, Hash)>] Array<AllBusinessReport> data, response status code and response headers
    def get_customer_all_business_report_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ContractsApi.get_customer_all_business_report ...'
      end
      if @api_client.config.client_side_validation && opts[:'origin_operation_type'] && !['Match', 'Registro'].include?(opts[:'origin_operation_type'])
        fail ArgumentError, 'invalid value for "origin_operation_type", must be one of Match, Registro'
      end
      # resource path
      local_var_path = '/v1/all-deals/report'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'initialPeriod'] = opts[:'initial_period'] if !opts[:'initial_period'].nil?
      query_params[:'finalPeriod'] = opts[:'final_period'] if !opts[:'final_period'].nil?
      query_params[:'originOperationType'] = opts[:'origin_operation_type'] if !opts[:'origin_operation_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      header_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'Array<AllBusinessReport>' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ContractsApi#get_customer_all_business_report\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
