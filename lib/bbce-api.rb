=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

# Common files
require 'bbce-api/api_client'
require 'bbce-api/api_error'
require 'bbce-api/version'
require 'bbce-api/configuration'

# Models
require 'bbce-api/models/actions_in_batch'
require 'bbce-api/models/all_business_report'
require 'bbce-api/models/all_business_status'
require 'bbce-api/models/anonymous_order'
require 'bbce-api/models/approve_registry'
require 'bbce-api/models/bad_request'
require 'bbce-api/models/bilateral_company_deadline_value_payload'
require 'bbce-api/models/bilateral_company_deadline_value_response'
require 'bbce-api/models/bilateral_company_limit'
require 'bbce-api/models/cash_flow'
require 'bbce-api/models/company'
require 'bbce-api/models/company_profile'
require 'bbce-api/models/create_bilateral_company'
require 'bbce-api/models/create_cash_flow'
require 'bbce-api/models/create_detailed_registry'
require 'bbce-api/models/create_detailed_registry_resource'
require 'bbce-api/models/create_order'
require 'bbce-api/models/create_registry'
require 'bbce-api/models/create_ticker'
require 'bbce-api/models/create_ticker_feature'
require 'bbce-api/models/create_ticker_link'
require 'bbce-api/models/curve'
require 'bbce-api/models/deadline_value_payload'
require 'bbce-api/models/edit_order'
require 'bbce-api/models/error'
require 'bbce-api/models/forbidden'
require 'bbce-api/models/fwd_curve'
require 'bbce-api/models/limit_type'
require 'bbce-api/models/link_feature'
require 'bbce-api/models/login_request'
require 'bbce-api/models/login_request_with_company_code'
require 'bbce-api/models/logout_request'
require 'bbce-api/models/match'
require 'bbce-api/models/negotiable_feature'
require 'bbce-api/models/negotiable_ticker'
require 'bbce-api/models/negotiation_data'
require 'bbce-api/models/not_found'
require 'bbce-api/models/offers_book'
require 'bbce-api/models/operation_status'
require 'bbce-api/models/operation_type'
require 'bbce-api/models/operational_limit'
require 'bbce-api/models/order'
require 'bbce-api/models/order_report'
require 'bbce-api/models/order_type'
require 'bbce-api/models/part_position'
require 'bbce-api/models/price_type'
require 'bbce-api/models/product_category'
require 'bbce-api/models/product_class'
require 'bbce-api/models/product_family'
require 'bbce-api/models/product_feature'
require 'bbce-api/models/product_feature_options'
require 'bbce-api/models/product_link'
require 'bbce-api/models/profile_ccee'
require 'bbce-api/models/refresh_token_request'
require 'bbce-api/models/refresh_token_response'
require 'bbce-api/models/registry'
require 'bbce-api/models/registry_status'
require 'bbce-api/models/registry_type'
require 'bbce-api/models/status_reason'
require 'bbce-api/models/tendency_enum'
require 'bbce-api/models/ticker'
require 'bbce-api/models/ticker_by_id'
require 'bbce-api/models/ticker_feature'
require 'bbce-api/models/ticker_link'
require 'bbce-api/models/ticker_product_link'
require 'bbce-api/models/ticker_stamp'
require 'bbce-api/models/ticker_type'
require 'bbce-api/models/trade_status'
require 'bbce-api/models/underlying_asset'
require 'bbce-api/models/user_auth_response'
require 'bbce-api/models/wallet'

# APIs
require 'bbce-api/api/auth_api'
require 'bbce-api/api/companies_api'
require 'bbce-api/api/contracts_api'
require 'bbce-api/api/curve_api'
require 'bbce-api/api/detailed_registries_api'
require 'bbce-api/api/limits_api'
require 'bbce-api/api/link_api'
require 'bbce-api/api/matches_api'
require 'bbce-api/api/negotiation_api'
require 'bbce-api/api/orders_api'
require 'bbce-api/api/registries_api'
require 'bbce-api/api/wallets_api'

module BbceApi
  class << self
    # Customize default settings for the SDK using block.
    #   BbceApi.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
