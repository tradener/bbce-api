=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

module BbceApi
  class AuthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Authenticate the user
    # The login API is used to authenticate a user on eHub
    # @param body Data required for user login
    # @param [Hash] opts the optional parameters
    # @return [UserAuthResponse]
    def login(body, opts = {})
      data, _status_code, _headers = login_with_http_info(body, opts)
      data
    end

    # Authenticate the user
    # The login API is used to authenticate a user on eHub
    # @param body Data required for user login
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserAuthResponse, Integer, Hash)>] UserAuthResponse data, response status code and response headers
    def login_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.login ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthApi.login"
      end
      # resource path
      local_var_path = '/v1/login'

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

      return_type = opts[:return_type] || 'UserAuthResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#login\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Authenticate the user
    # The login API is used to authenticate a user on eHub
    # @param body Data required for user login
    # @param [Hash] opts the optional parameters
    # @return [UserAuthResponse]
    def login_v2(body, opts = {})
      data, _status_code, _headers = login_v2_with_http_info(body, opts)
      data
    end

    # Authenticate the user
    # The login API is used to authenticate a user on eHub
    # @param body Data required for user login
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserAuthResponse, Integer, Hash)>] UserAuthResponse data, response status code and response headers
    def login_v2_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.login_v2 ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthApi.login_v2"
      end
      # resource path
      local_var_path = '/v2/login'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(nil)

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'UserAuthResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#login_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Logout the user
    # The Logout API is used to clear the authorization for the logged user
    # @param body Data required for user logout
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def logout(body, opts = {})
      logout_with_http_info(body, opts)
      nil
    end

    # Logout the user
    # The Logout API is used to clear the authorization for the logged user
    # @param body Data required for user logout
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def logout_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.logout ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthApi.logout"
      end
      # resource path
      local_var_path = '/v1/logout'

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
        @api_client.config.logger.debug "API called: AuthApi#logout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update token
    # The Refresh token API is used to get new authentication token when the current token expires
    # @param body Data required to request the new token
    # @param [Hash] opts the optional parameters
    # @return [RefreshTokenResponse]
    def refresh_token(body, opts = {})
      data, _status_code, _headers = refresh_token_with_http_info(body, opts)
      data
    end

    # Update token
    # The Refresh token API is used to get new authentication token when the current token expires
    # @param body Data required to request the new token
    # @param [Hash] opts the optional parameters
    # @return [Array<(RefreshTokenResponse, Integer, Hash)>] RefreshTokenResponse data, response status code and response headers
    def refresh_token_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthApi.refresh_token ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AuthApi.refresh_token"
      end
      # resource path
      local_var_path = '/v1/refresh-token'

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

      return_type = opts[:return_type] || 'RefreshTokenResponse' 

      auth_names = opts[:auth_names] || []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthApi#refresh_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
