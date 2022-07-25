# BbceApi::Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | 
**wallet_id** | **Integer** |  | 
**status** | [**OperationStatus**](OperationStatus.md) |  | 
**trade_status** | [**TradeStatus**](TradeStatus.md) |  | [optional] 
**status_reason** | [**StatusReason**](StatusReason.md) |  | [optional] 
**operation_type** | [**OperationType**](OperationType.md) |  | 
**description** | **String** |  | [optional] 
**user_id** | **String** |  | 
**company_id** | **String** |  | 
**product_id** | [**BigDecimal**](BigDecimal.md) |  | 
**link_id** | [**BigDecimal**](BigDecimal.md) |  | 
**unit_price** | [**BigDecimal**](BigDecimal.md) | Unit value of the transaction | 
**quantity** | **Float** |  | 
**apparent_quantity** | **Float** |  | [optional] 
**quantity_transacted** | **Float** |  | [optional] 
**current_apparent_quantity** | **Float** |  | [optional] 
**average_price** | **Float** |  | [optional] 
**type** | [**OrderType**](OrderType.md) |  | [optional] 
**created_at** | **String** |  | 
**updated_at** | **String** |  | 
**priority_timestamp** | **String** |  | 
**operator_transaction_id** | **String** |  | [optional] 
**canceled_at** | **String** |  | [optional] 
**canceled_by_user_id** | **String** |  | [optional] 

