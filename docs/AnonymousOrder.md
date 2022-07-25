# BbceApi::AnonymousOrder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**BigDecimal**](BigDecimal.md) | Order ID | 
**operation_type** | [**OperationType**](OperationType.md) |  | 
**status** | [**OperationStatus**](OperationStatus.md) |  | 
**created_at** | **String** | When the order was created. | 
**updated_at** | **String** | When the order was updated by the system | 
**priority_timestamp** | **String** | The date that represents the priority when consider a match. Is mostly of times when the order was last updated by the user. | 
**product_id** | [**BigDecimal**](BigDecimal.md) | Ticker id | 
**quantity** | [**BigDecimal**](BigDecimal.md) | Current quantity that is displayed in book | 
**unit_price** | [**BigDecimal**](BigDecimal.md) | Value that the owner wants to close a business | 
**operational_limit** | [**OperationalLimit**](OperationalLimit.md) |  | 
**my_order** | **BOOLEAN** | True if this order is yours | 
**attackable_quantity** | [**BigDecimal**](BigDecimal.md) | The quantity that you have limit avaliable to match | [optional] 

