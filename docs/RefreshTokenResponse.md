# BbceApi::RefreshTokenResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **String** | The access token.  Different from idToken, this one will not be required by other service calls. | 
**expires_in** | [**BigDecimal**](BigDecimal.md) | The expiration period of the authentication result in seconds. | 
**id_token** | **String** | This token will be required on all service calls.  It is used to identify the user and their respective permissions to the services. | 

