=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class TickerType
    0 = 0.freeze
    1 = 1.freeze
    2 = 2.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = TickerType.constants.select { |c| TickerType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #TickerType" if constantValues.empty?
      value
    end
  end
end
