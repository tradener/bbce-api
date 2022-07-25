=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class RegistryStatus
    APROVAO_PENDENTE = 'Aprovação Pendente'.freeze
    APROVADO = 'Aprovado'.freeze
    REPROVADO = 'Reprovado'.freeze
    CANCELAMENTO_DE_APROVAO_PENDENTE = 'Cancelamento de Aprovação Pendente'.freeze
    CANCELADO = 'Cancelado'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = RegistryStatus.constants.select { |c| RegistryStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #RegistryStatus" if constantValues.empty?
      value
    end
  end
end
