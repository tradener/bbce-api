=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class TradeStatus
    NO_NEGOCIADA = 'Não Negociada'.freeze
    PARCIALMENTE_NEGOCIADA = 'Parcialmente Negociada'.freeze
    NEGOCIADA = 'Negociada'.freeze
    TOTALMENTE_NEGOCIADA = 'Totalmente Negociada'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = TradeStatus.constants.select { |c| TradeStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #TradeStatus" if constantValues.empty?
      value
    end
  end
end
