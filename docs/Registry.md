# BbceApi::Registry

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_id** | **Integer** | Product identification | 
**id** | **Integer** | Registry identification | 
**type** | [**RegistryType**](RegistryType.md) |  | 
**contract_number** | **String** | Contract number. Can be used to download contract on:   **/v1/contracts/download** | 
**part_position** | [**PartPosition**](PartPosition.md) |  | 
**quantity** | **Float** |  | 
**unit_price** | [**BigDecimal**](BigDecimal.md) | Unit value of the transaction | 
**trading_unit** | **String** | Trading Unit | [optional] 
**measurement_unit** | **String** | Measurement Unit | [optional] 
**part_user_id** | **String** | Company&#x27;s operator identification | 
**part_company_id** | **String** | Company identification | 
**counter_part_company_id** | **String** | Counterpart company identification | 
**part_wallet_id** | **Integer** | Company&#x27;s wallet identifier | 
**counter_part_wallet_id** | **Integer** | Counterpart company&#x27;s wallet identification | [optional] 
**cancellation_requestor_user_id** | **Integer** | Cancellation requestor identification | [optional] 
**cancellation_approved_user_id** | **Integer** | Identifier of the user who approved the cancellation | [optional] 
**status** | [**RegistryStatus**](RegistryStatus.md) |  | 
**observation** | **String** |  | [optional] 
**approval_date** | **String** | Date the registry was approved | [optional] 
**operation_type** | [**OperationType**](OperationType.md) |  | [optional] 
**created_at** | **String** | Date the registry was created | 
**updated_at** | **String** | Last date that the registry was updated | [optional] 

