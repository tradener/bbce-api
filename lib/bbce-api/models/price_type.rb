=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class PriceType
    FIX = 'FIX'.freeze
    AGIO = 'AGIO'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PriceType.constants.select { |c| PriceType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #PriceType" if constantValues.empty?
      value
    end
  end
end
