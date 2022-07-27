=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class CreateRegistry
    # Product identifier
    attr_accessor :product_id

    attr_accessor :part_position

    # Company identifier
    attr_accessor :part_company_id

    # Company wallet identifier
    attr_accessor :part_wallet_id

    # Counterpart company identifier
    attr_accessor :counter_part_company_id

    attr_accessor :quantity

    # Unit value of the transaction
    attr_accessor :unit_price

    # Numeric 6 to 12 digits signature
    attr_accessor :signature

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'product_id' => :'productId',
        :'part_position' => :'partPosition',
        :'part_company_id' => :'partCompanyId',
        :'part_wallet_id' => :'partWalletId',
        :'counter_part_company_id' => :'counterPartCompanyId',
        :'quantity' => :'quantity',
        :'unit_price' => :'unitPrice',
        :'signature' => :'signature'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'product_id' => :'Object',
        :'part_position' => :'Object',
        :'part_company_id' => :'Object',
        :'part_wallet_id' => :'Object',
        :'counter_part_company_id' => :'Object',
        :'quantity' => :'Object',
        :'unit_price' => :'Object',
        :'signature' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `BbceApi::CreateRegistry` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BbceApi::CreateRegistry`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'product_id')
        self.product_id = attributes[:'product_id']
      end

      if attributes.key?(:'part_position')
        self.part_position = attributes[:'part_position']
      end

      if attributes.key?(:'part_company_id')
        self.part_company_id = attributes[:'part_company_id']
      end

      if attributes.key?(:'part_wallet_id')
        self.part_wallet_id = attributes[:'part_wallet_id']
      end

      if attributes.key?(:'counter_part_company_id')
        self.counter_part_company_id = attributes[:'counter_part_company_id']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'unit_price')
        self.unit_price = attributes[:'unit_price']
      end

      if attributes.key?(:'signature')
        self.signature = attributes[:'signature']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @product_id.nil?
        invalid_properties.push('invalid value for "product_id", product_id cannot be nil.')
      end

      if @part_position.nil?
        invalid_properties.push('invalid value for "part_position", part_position cannot be nil.')
      end

      if @part_company_id.nil?
        invalid_properties.push('invalid value for "part_company_id", part_company_id cannot be nil.')
      end

      if @part_wallet_id.nil?
        invalid_properties.push('invalid value for "part_wallet_id", part_wallet_id cannot be nil.')
      end

      if @counter_part_company_id.nil?
        invalid_properties.push('invalid value for "counter_part_company_id", counter_part_company_id cannot be nil.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @unit_price.nil?
        invalid_properties.push('invalid value for "unit_price", unit_price cannot be nil.')
      end

      if @signature.nil?
        invalid_properties.push('invalid value for "signature", signature cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @product_id.nil?
      return false if @part_position.nil?
      return false if @part_company_id.nil?
      return false if @part_wallet_id.nil?
      return false if @counter_part_company_id.nil?
      return false if @quantity.nil?
      return false if @unit_price.nil?
      return false if @signature.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          product_id == o.product_id &&
          part_position == o.part_position &&
          part_company_id == o.part_company_id &&
          part_wallet_id == o.part_wallet_id &&
          counter_part_company_id == o.counter_part_company_id &&
          quantity == o.quantity &&
          unit_price == o.unit_price &&
          signature == o.signature
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [product_id, part_position, part_company_id, part_wallet_id, counter_part_company_id, quantity, unit_price, signature].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # BbceApi.const_get(type).build_from_hash(value)
        value.to_s
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
