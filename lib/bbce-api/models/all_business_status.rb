=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class AllBusinessStatus
    ATIVO = 'Ativo'.freeze
    CANCELADO = 'Cancelado'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = AllBusinessStatus.constants.select { |c| AllBusinessStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #AllBusinessStatus" if constantValues.empty?
      value
    end
  end
end
