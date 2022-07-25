=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class OperationalLimit
    MY_OWN_ORDER = 'myOwnOrder'.freeze
    ORDER_WITHOUT_LIMIT = 'orderWithoutLimit'.freeze
    ORDER_WITH_LIMIT = 'orderWithLimit'.freeze
    ORDER_WITH_PARTIAL_LIMIT = 'orderWithPartialLimit'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = OperationalLimit.constants.select { |c| OperationalLimit::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #OperationalLimit" if constantValues.empty?
      value
    end
  end
end
