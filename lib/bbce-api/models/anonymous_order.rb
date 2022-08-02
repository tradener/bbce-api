=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class AnonymousOrder
    # Order ID
    attr_accessor :id

    attr_accessor :operation_type

    attr_accessor :status

    # When the order was created.
    attr_accessor :created_at

    # When the order was updated by the system
    attr_accessor :updated_at

    # The date that represents the priority when consider a match. Is mostly of times when the order was last updated by the user.
    attr_accessor :priority_timestamp

    # Ticker id
    attr_accessor :product_id

    # Current quantity that is displayed in book
    attr_accessor :quantity

    # Value that the owner wants to close a business
    attr_accessor :unit_price

    attr_accessor :operational_limit

    # True if this order is yours
    attr_accessor :my_order

    # The quantity that you have limit avaliable to match
    attr_accessor :attackable_quantity

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'operation_type' => :'operationType',
        :'status' => :'status',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'priority_timestamp' => :'priorityTimestamp',
        :'product_id' => :'productId',
        :'quantity' => :'quantity',
        :'unit_price' => :'unitPrice',
        :'operational_limit' => :'operationalLimit',
        :'my_order' => :'myOrder',
        :'attackable_quantity' => :'attackableQuantity'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Object',
        :'operation_type' => :'Object',
        :'status' => :'Object',
        :'created_at' => :'Object',
        :'updated_at' => :'Object',
        :'priority_timestamp' => :'Object',
        :'product_id' => :'Object',
        :'quantity' => :'Object',
        :'unit_price' => :'Object',
        :'operational_limit' => :'Object',
        :'my_order' => :'Object',
        :'attackable_quantity' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BbceApi::AnonymousOrder` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BbceApi::AnonymousOrder`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'operation_type')
        self.operation_type = attributes[:'operation_type']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'priority_timestamp')
        self.priority_timestamp = attributes[:'priority_timestamp']
      end

      if attributes.key?(:'product_id')
        self.product_id = attributes[:'product_id']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'unit_price')
        self.unit_price = attributes[:'unit_price']
      end

      if attributes.key?(:'operational_limit')
        self.operational_limit = attributes[:'operational_limit']
      end

      if attributes.key?(:'my_order')
        self.my_order = attributes[:'my_order']
      end

      if attributes.key?(:'attackable_quantity')
        self.attackable_quantity = attributes[:'attackable_quantity']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @operation_type.nil?
        invalid_properties.push('invalid value for "operation_type", operation_type cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @priority_timestamp.nil?
        invalid_properties.push('invalid value for "priority_timestamp", priority_timestamp cannot be nil.')
      end

      if @product_id.nil?
        invalid_properties.push('invalid value for "product_id", product_id cannot be nil.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @unit_price.nil?
        invalid_properties.push('invalid value for "unit_price", unit_price cannot be nil.')
      end

      if @operational_limit.nil?
        invalid_properties.push('invalid value for "operational_limit", operational_limit cannot be nil.')
      end

      if @my_order.nil?
        invalid_properties.push('invalid value for "my_order", my_order cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @operation_type.nil?
      return false if @status.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @priority_timestamp.nil?
      return false if @product_id.nil?
      return false if @quantity.nil?
      return false if @unit_price.nil?
      return false if @operational_limit.nil?
      return false if @my_order.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          operation_type == o.operation_type &&
          status == o.status &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          priority_timestamp == o.priority_timestamp &&
          product_id == o.product_id &&
          quantity == o.quantity &&
          unit_price == o.unit_price &&
          operational_limit == o.operational_limit &&
          my_order == o.my_order &&
          attackable_quantity == o.attackable_quantity
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, operation_type, status, created_at, updated_at, priority_timestamp, product_id, quantity, unit_price, operational_limit, my_order, attackable_quantity].hash
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
