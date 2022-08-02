=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class OrderReport
    attr_accessor :id

    attr_accessor :product_id

    attr_accessor :link_id

    attr_accessor :status

    attr_accessor :trade_status

    attr_accessor :operation_type

    attr_accessor :created_at

    attr_accessor :quantity

    attr_accessor :apparent_quantity

    attr_accessor :quantity_transacted

    # Unit value of the transaction
    attr_accessor :unit_price

    attr_accessor :average_price

    # Trading Unit
    attr_accessor :trading_unit

    attr_accessor :user_id

    attr_accessor :company_id

    attr_accessor :reason_for_cancellation

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'product_id' => :'productId',
        :'link_id' => :'linkId',
        :'status' => :'status',
        :'trade_status' => :'tradeStatus',
        :'operation_type' => :'operationType',
        :'created_at' => :'createdAt',
        :'quantity' => :'quantity',
        :'apparent_quantity' => :'apparentQuantity',
        :'quantity_transacted' => :'quantityTransacted',
        :'unit_price' => :'unitPrice',
        :'average_price' => :'averagePrice',
        :'trading_unit' => :'tradingUnit',
        :'user_id' => :'userId',
        :'company_id' => :'companyId',
        :'reason_for_cancellation' => :'reasonForCancellation'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Object',
        :'product_id' => :'Object',
        :'link_id' => :'Object',
        :'status' => :'Object',
        :'trade_status' => :'Object',
        :'operation_type' => :'Object',
        :'created_at' => :'Object',
        :'quantity' => :'Object',
        :'apparent_quantity' => :'Object',
        :'quantity_transacted' => :'Object',
        :'unit_price' => :'Object',
        :'average_price' => :'Object',
        :'trading_unit' => :'Object',
        :'user_id' => :'Object',
        :'company_id' => :'Object',
        :'reason_for_cancellation' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BbceApi::OrderReport` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BbceApi::OrderReport`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'product_id')
        self.product_id = attributes[:'product_id']
      end

      if attributes.key?(:'link_id')
        self.link_id = attributes[:'link_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'trade_status')
        self.trade_status = attributes[:'trade_status']
      end

      if attributes.key?(:'operation_type')
        self.operation_type = attributes[:'operation_type']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'apparent_quantity')
        self.apparent_quantity = attributes[:'apparent_quantity']
      end

      if attributes.key?(:'quantity_transacted')
        self.quantity_transacted = attributes[:'quantity_transacted']
      end

      if attributes.key?(:'unit_price')
        self.unit_price = attributes[:'unit_price']
      end

      if attributes.key?(:'average_price')
        self.average_price = attributes[:'average_price']
      end

      if attributes.key?(:'trading_unit')
        self.trading_unit = attributes[:'trading_unit']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'company_id')
        self.company_id = attributes[:'company_id']
      end

      if attributes.key?(:'reason_for_cancellation')
        self.reason_for_cancellation = attributes[:'reason_for_cancellation']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @product_id.nil?
        invalid_properties.push('invalid value for "product_id", product_id cannot be nil.')
      end

      if @link_id.nil?
        invalid_properties.push('invalid value for "link_id", link_id cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @trade_status.nil?
        invalid_properties.push('invalid value for "trade_status", trade_status cannot be nil.')
      end

      if @operation_type.nil?
        invalid_properties.push('invalid value for "operation_type", operation_type cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @apparent_quantity.nil?
        invalid_properties.push('invalid value for "apparent_quantity", apparent_quantity cannot be nil.')
      end

      if @quantity_transacted.nil?
        invalid_properties.push('invalid value for "quantity_transacted", quantity_transacted cannot be nil.')
      end

      if @unit_price.nil?
        invalid_properties.push('invalid value for "unit_price", unit_price cannot be nil.')
      end

      if @average_price.nil?
        invalid_properties.push('invalid value for "average_price", average_price cannot be nil.')
      end

      if @trading_unit.nil?
        invalid_properties.push('invalid value for "trading_unit", trading_unit cannot be nil.')
      end

      if @user_id.nil?
        invalid_properties.push('invalid value for "user_id", user_id cannot be nil.')
      end

      if @company_id.nil?
        invalid_properties.push('invalid value for "company_id", company_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @product_id.nil?
      return false if @link_id.nil?
      return false if @status.nil?
      return false if @trade_status.nil?
      return false if @operation_type.nil?
      return false if @created_at.nil?
      return false if @quantity.nil?
      return false if @apparent_quantity.nil?
      return false if @quantity_transacted.nil?
      return false if @unit_price.nil?
      return false if @average_price.nil?
      return false if @trading_unit.nil?
      return false if @user_id.nil?
      return false if @company_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          product_id == o.product_id &&
          link_id == o.link_id &&
          status == o.status &&
          trade_status == o.trade_status &&
          operation_type == o.operation_type &&
          created_at == o.created_at &&
          quantity == o.quantity &&
          apparent_quantity == o.apparent_quantity &&
          quantity_transacted == o.quantity_transacted &&
          unit_price == o.unit_price &&
          average_price == o.average_price &&
          trading_unit == o.trading_unit &&
          user_id == o.user_id &&
          company_id == o.company_id &&
          reason_for_cancellation == o.reason_for_cancellation
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, product_id, link_id, status, trade_status, operation_type, created_at, quantity, apparent_quantity, quantity_transacted, unit_price, average_price, trading_unit, user_id, company_id, reason_for_cancellation].hash
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
        BbceApi.const_get(type).build_from_hash(value)
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
      hash = Hash.new
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
