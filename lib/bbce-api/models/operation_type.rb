=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class OperationType
    MATCH = 'Match'.freeze
    REGISTRO = 'Registro'.freeze
    ORDEM_DE_COMPRA = 'Ordem de Compra'.freeze
    ORDEM_DE_VENDA = 'Ordem de Venda'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = OperationType.constants.select { |c| OperationType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #OperationType" if constantValues.empty?
      value
    end
  end
end
