# BbceApi::TickerLink

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | TickerLink identification | 
**link** | [**TickerProductLink**](TickerProductLink.md) |  | 
**minimum_lot** | [**BigDecimal**](BigDecimal.md) | Minimum Lot | 
**minimum_increment** | **Float** | Minimum Incremental of Lot | 
**price_type** | [**PriceType**](PriceType.md) |  | 
**start_permanence** | **Date** | Start of permanence | [optional] 
**end_permanence** | **Date** | End of permanence | [optional] 
**features** | [**Array&lt;TickerFeature&gt;**](TickerFeature.md) |  | [optional] 
**cash_flows** | [**Array&lt;CashFlow&gt;**](CashFlow.md) |  | 
**unique_conversion_factor** | **BOOLEAN** | Unique Conversion Factor data ? | 
**created_at** | **DateTime** | Created Date | 
**updated_at** | **DateTime** | Updated Date | 

