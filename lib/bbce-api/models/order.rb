=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class Order
    attr_accessor :id

    attr_accessor :wallet_id

    attr_accessor :status

    attr_accessor :trade_status

    attr_accessor :status_reason

    attr_accessor :operation_type

    attr_accessor :description

    attr_accessor :user_id

    attr_accessor :company_id

    attr_accessor :product_id

    attr_accessor :link_id

    # Unit value of the transaction
    attr_accessor :unit_price

    attr_accessor :quantity

    attr_accessor :apparent_quantity

    attr_accessor :quantity_transacted

    attr_accessor :current_apparent_quantity

    attr_accessor :average_price

    attr_accessor :type

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :priority_timestamp

    attr_accessor :operator_transaction_id

    attr_accessor :canceled_at

    attr_accessor :canceled_by_user_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'wallet_id' => :'walletId',
        :'status' => :'status',
        :'trade_status' => :'tradeStatus',
        :'status_reason' => :'statusReason',
        :'operation_type' => :'operationType',
        :'description' => :'description',
        :'user_id' => :'userId',
        :'company_id' => :'companyId',
        :'product_id' => :'productId',
        :'link_id' => :'linkId',
        :'unit_price' => :'unitPrice',
        :'quantity' => :'quantity',
        :'apparent_quantity' => :'apparentQuantity',
        :'quantity_transacted' => :'quantityTransacted',
        :'current_apparent_quantity' => :'currentApparentQuantity',
        :'average_price' => :'averagePrice',
        :'type' => :'type',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'priority_timestamp' => :'priorityTimestamp',
        :'operator_transaction_id' => :'operatorTransactionId',
        :'canceled_at' => :'canceledAt',
        :'canceled_by_user_id' => :'canceledByUserId'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Object',
        :'wallet_id' => :'Object',
        :'status' => :'Object',
        :'trade_status' => :'Object',
        :'status_reason' => :'Object',
        :'operation_type' => :'Object',
        :'description' => :'Object',
        :'user_id' => :'Object',
        :'company_id' => :'Object',
        :'product_id' => :'Object',
        :'link_id' => :'Object',
        :'unit_price' => :'Object',
        :'quantity' => :'Object',
        :'apparent_quantity' => :'Object',
        :'quantity_transacted' => :'Object',
        :'current_apparent_quantity' => :'Object',
        :'average_price' => :'Object',
        :'type' => :'Object',
        :'created_at' => :'Object',
        :'updated_at' => :'Object',
        :'priority_timestamp' => :'Object',
        :'operator_transaction_id' => :'Object',
        :'canceled_at' => :'Object',
        :'canceled_by_user_id' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BbceApi::Order` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BbceApi::Order`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'wallet_id')
        self.wallet_id = attributes[:'wallet_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'trade_status')
        self.trade_status = attributes[:'trade_status']
      end

      if attributes.key?(:'status_reason')
        self.status_reason = attributes[:'status_reason']
      end

      if attributes.key?(:'operation_type')
        self.operation_type = attributes[:'operation_type']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'company_id')
        self.company_id = attributes[:'company_id']
      end

      if attributes.key?(:'product_id')
        self.product_id = attributes[:'product_id']
      end

      if attributes.key?(:'link_id')
        self.link_id = attributes[:'link_id']
      end

      if attributes.key?(:'unit_price')
        self.unit_price = attributes[:'unit_price']
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

      if attributes.key?(:'current_apparent_quantity')
        self.current_apparent_quantity = attributes[:'current_apparent_quantity']
      end

      if attributes.key?(:'average_price')
        self.average_price = attributes[:'average_price']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
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

      if attributes.key?(:'operator_transaction_id')
        self.operator_transaction_id = attributes[:'operator_transaction_id']
      end

      if attributes.key?(:'canceled_at')
        self.canceled_at = attributes[:'canceled_at']
      end

      if attributes.key?(:'canceled_by_user_id')
        self.canceled_by_user_id = attributes[:'canceled_by_user_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @wallet_id.nil?
        invalid_properties.push('invalid value for "wallet_id", wallet_id cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @operation_type.nil?
        invalid_properties.push('invalid value for "operation_type", operation_type cannot be nil.')
      end

      if @user_id.nil?
        invalid_properties.push('invalid value for "user_id", user_id cannot be nil.')
      end

      if @company_id.nil?
        invalid_properties.push('invalid value for "company_id", company_id cannot be nil.')
      end

      if @product_id.nil?
        invalid_properties.push('invalid value for "product_id", product_id cannot be nil.')
      end

      if @link_id.nil?
        invalid_properties.push('invalid value for "link_id", link_id cannot be nil.')
      end

      if @unit_price.nil?
        invalid_properties.push('invalid value for "unit_price", unit_price cannot be nil.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @wallet_id.nil?
      return false if @status.nil?
      return false if @operation_type.nil?
      return false if @user_id.nil?
      return false if @company_id.nil?
      return false if @product_id.nil?
      return false if @link_id.nil?
      return false if @unit_price.nil?
      return false if @quantity.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @priority_timestamp.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          wallet_id == o.wallet_id &&
          status == o.status &&
          trade_status == o.trade_status &&
          status_reason == o.status_reason &&
          operation_type == o.operation_type &&
          description == o.description &&
          user_id == o.user_id &&
          company_id == o.company_id &&
          product_id == o.product_id &&
          link_id == o.link_id &&
          unit_price == o.unit_price &&
          quantity == o.quantity &&
          apparent_quantity == o.apparent_quantity &&
          quantity_transacted == o.quantity_transacted &&
          current_apparent_quantity == o.current_apparent_quantity &&
          average_price == o.average_price &&
          type == o.type &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          priority_timestamp == o.priority_timestamp &&
          operator_transaction_id == o.operator_transaction_id &&
          canceled_at == o.canceled_at &&
          canceled_by_user_id == o.canceled_by_user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, wallet_id, status, trade_status, status_reason, operation_type, description, user_id, company_id, product_id, link_id, unit_price, quantity, apparent_quantity, quantity_transacted, current_apparent_quantity, average_price, type, created_at, updated_at, priority_timestamp, operator_transaction_id, canceled_at, canceled_by_user_id].hash
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
