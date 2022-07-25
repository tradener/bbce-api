# BbceApi::AuthApi

All URIs are relative to */bus*

Method | HTTP request | Description
------------- | ------------- | -------------
[**login**](AuthApi.md#login) | **POST** /v1/login | Authenticate the user
[**login_v2**](AuthApi.md#login_v2) | **POST** /v2/login | Authenticate the user
[**logout**](AuthApi.md#logout) | **POST** /v1/logout | Logout the user
[**refresh_token**](AuthApi.md#refresh_token) | **POST** /v1/refresh-token | Update token

# **login**
> UserAuthResponse login(body)

Authenticate the user

The login API is used to authenticate a user on eHub

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::AuthApi.new
body = BbceApi::LoginRequest.new # LoginRequest | Data required for user login


begin
  #Authenticate the user
  result = api_instance.login(body)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling AuthApi->login: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LoginRequest**](LoginRequest.md)| Data required for user login | 

### Return type

[**UserAuthResponse**](UserAuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



# **login_v2**
> UserAuthResponse login_v2(body)

Authenticate the user

The login API is used to authenticate a user on eHub

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::AuthApi.new
body = BbceApi::LoginRequestWithCompanyCode.new # LoginRequestWithCompanyCode | Data required for user login


begin
  #Authenticate the user
  result = api_instance.login_v2(body)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling AuthApi->login_v2: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LoginRequestWithCompanyCode**](LoginRequestWithCompanyCode.md)| Data required for user login | 

### Return type

[**UserAuthResponse**](UserAuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



# **logout**
> logout(body)

Logout the user

The Logout API is used to clear the authorization for the logged user

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::AuthApi.new
body = BbceApi::LogoutRequest.new # LogoutRequest | Data required for user logout


begin
  #Logout the user
  api_instance.logout(body)
rescue BbceApi::ApiError => e
  puts "Exception when calling AuthApi->logout: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LogoutRequest**](LogoutRequest.md)| Data required for user logout | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



# **refresh_token**
> RefreshTokenResponse refresh_token(body)

Update token

The Refresh token API is used to get new authentication token when the current token expires

### Example
```ruby
# load the gem
require 'bbce-api'

api_instance = BbceApi::AuthApi.new
body = BbceApi::RefreshTokenRequest.new # RefreshTokenRequest | Data required to request the new token


begin
  #Update token
  result = api_instance.refresh_token(body)
  p result
rescue BbceApi::ApiError => e
  puts "Exception when calling AuthApi->refresh_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RefreshTokenRequest**](RefreshTokenRequest.md)| Data required to request the new token | 

### Return type

[**RefreshTokenResponse**](RefreshTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: application/json



