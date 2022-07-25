=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class StatusReason
    CANCELED_BY_USER_REQUEST = 'CanceledByUserRequest'.freeze
    CANCELED_BY_ADMIN_USER_REQUEST = 'CanceledByAdminUserRequest'.freeze
    CANCELED_BY_EDITING = 'CanceledByEditing'.freeze
    FINALIZED_BY_BUSINESS_GENERATION = 'FinalizedByBusinessGeneration'.freeze
    FINALIZED_BY_EXPIRATION = 'FinalizedByExpiration'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = StatusReason.constants.select { |c| StatusReason::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #StatusReason" if constantValues.empty?
      value
    end
  end
end
