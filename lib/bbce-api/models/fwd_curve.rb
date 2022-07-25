=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class FwdCurve
    BBCEPLDCURVE = 'BBCE\\\\PLD:CURVE'.freeze
    B3PREDICURVE = 'B3\\\\PREDI:CURVE'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = FwdCurve.constants.select { |c| FwdCurve::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #FwdCurve" if constantValues.empty?
      value
    end
  end
end
