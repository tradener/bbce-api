# BbceApi::Match

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**BigDecimal**](BigDecimal.md) | Match identifier | 
**contract_number** | **String** | Contract number. Can be used to download contract on:   **/v1/contracts/download** | 
**product_id** | [**BigDecimal**](BigDecimal.md) | Product identifier | 
**link_id** | [**BigDecimal**](BigDecimal.md) | Link identifier | 
**buying_company_id** | **String** | Identifier of the company making the purchase | 
**buying_user_id** | **String** | Identifier of the operator making the purchase | 
**selling_company_id** | **String** | Identifier of the company making the sale | 
**selling_user_id** | **String** | Identifier of the operator making the sale | 
**tendency** | [**TendencyEnum**](TendencyEnum.md) |  | 
**created_at** | **String** | Created Date | 
**quantity** | **Float** |  | 
**unit_price** | [**BigDecimal**](BigDecimal.md) | Unit value of the transaction | 
**trading_unit** | **String** | Trading Unit | 
**measurement_unit** | **String** | Measurement Unit | 
**status** | [**OperationStatus**](OperationStatus.md) |  | 

