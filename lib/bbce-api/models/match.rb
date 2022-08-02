=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class Match
    # Match identifier
    attr_accessor :id

    # Contract number. Can be used to download contract on:   **/v1/contracts/download**
    attr_accessor :contract_number

    # Product identifier
    attr_accessor :product_id

    # Link identifier
    attr_accessor :link_id

    # Identifier of the company making the purchase
    attr_accessor :buying_company_id

    # Identifier of the operator making the purchase
    attr_accessor :buying_user_id

    # Identifier of the company making the sale
    attr_accessor :selling_company_id

    # Identifier of the operator making the sale
    attr_accessor :selling_user_id

    attr_accessor :tendency

    # Created Date
    attr_accessor :created_at

    attr_accessor :quantity

    # Unit value of the transaction
    attr_accessor :unit_price

    # Trading Unit
    attr_accessor :trading_unit

    # Measurement Unit
    attr_accessor :measurement_unit

    attr_accessor :status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'contract_number' => :'contractNumber',
        :'product_id' => :'productId',
        :'link_id' => :'linkId',
        :'buying_company_id' => :'buyingCompanyId',
        :'buying_user_id' => :'buyingUserId',
        :'selling_company_id' => :'sellingCompanyId',
        :'selling_user_id' => :'sellingUserId',
        :'tendency' => :'tendency',
        :'created_at' => :'createdAt',
        :'quantity' => :'quantity',
        :'unit_price' => :'unitPrice',
        :'trading_unit' => :'tradingUnit',
        :'measurement_unit' => :'measurementUnit',
        :'status' => :'status'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Object',
        :'contract_number' => :'Object',
        :'product_id' => :'Object',
        :'link_id' => :'Object',
        :'buying_company_id' => :'Object',
        :'buying_user_id' => :'Object',
        :'selling_company_id' => :'Object',
        :'selling_user_id' => :'Object',
        :'tendency' => :'Object',
        :'created_at' => :'Object',
        :'quantity' => :'Object',
        :'unit_price' => :'Object',
        :'trading_unit' => :'Object',
        :'measurement_unit' => :'Object',
        :'status' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BbceApi::Match` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BbceApi::Match`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'contract_number')
        self.contract_number = attributes[:'contract_number']
      end

      if attributes.key?(:'product_id')
        self.product_id = attributes[:'product_id']
      end

      if attributes.key?(:'link_id')
        self.link_id = attributes[:'link_id']
      end

      if attributes.key?(:'buying_company_id')
        self.buying_company_id = attributes[:'buying_company_id']
      end

      if attributes.key?(:'buying_user_id')
        self.buying_user_id = attributes[:'buying_user_id']
      end

      if attributes.key?(:'selling_company_id')
        self.selling_company_id = attributes[:'selling_company_id']
      end

      if attributes.key?(:'selling_user_id')
        self.selling_user_id = attributes[:'selling_user_id']
      end

      if attributes.key?(:'tendency')
        self.tendency = attributes[:'tendency']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'unit_price')
        self.unit_price = attributes[:'unit_price']
      end

      if attributes.key?(:'trading_unit')
        self.trading_unit = attributes[:'trading_unit']
      end

      if attributes.key?(:'measurement_unit')
        self.measurement_unit = attributes[:'measurement_unit']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @contract_number.nil?
        invalid_properties.push('invalid value for "contract_number", contract_number cannot be nil.')
      end

      if @product_id.nil?
        invalid_properties.push('invalid value for "product_id", product_id cannot be nil.')
      end

      if @link_id.nil?
        invalid_properties.push('invalid value for "link_id", link_id cannot be nil.')
      end

      if @buying_company_id.nil?
        invalid_properties.push('invalid value for "buying_company_id", buying_company_id cannot be nil.')
      end

      if @buying_user_id.nil?
        invalid_properties.push('invalid value for "buying_user_id", buying_user_id cannot be nil.')
      end

      if @selling_company_id.nil?
        invalid_properties.push('invalid value for "selling_company_id", selling_company_id cannot be nil.')
      end

      if @selling_user_id.nil?
        invalid_properties.push('invalid value for "selling_user_id", selling_user_id cannot be nil.')
      end

      if @tendency.nil?
        invalid_properties.push('invalid value for "tendency", tendency cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @unit_price.nil?
        invalid_properties.push('invalid value for "unit_price", unit_price cannot be nil.')
      end

      if @trading_unit.nil?
        invalid_properties.push('invalid value for "trading_unit", trading_unit cannot be nil.')
      end

      if @measurement_unit.nil?
        invalid_properties.push('invalid value for "measurement_unit", measurement_unit cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @contract_number.nil?
      return false if @product_id.nil?
      return false if @link_id.nil?
      return false if @buying_company_id.nil?
      return false if @buying_user_id.nil?
      return false if @selling_company_id.nil?
      return false if @selling_user_id.nil?
      return false if @tendency.nil?
      return false if @created_at.nil?
      return false if @quantity.nil?
      return false if @unit_price.nil?
      return false if @trading_unit.nil?
      return false if @measurement_unit.nil?
      return false if @status.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          contract_number == o.contract_number &&
          product_id == o.product_id &&
          link_id == o.link_id &&
          buying_company_id == o.buying_company_id &&
          buying_user_id == o.buying_user_id &&
          selling_company_id == o.selling_company_id &&
          selling_user_id == o.selling_user_id &&
          tendency == o.tendency &&
          created_at == o.created_at &&
          quantity == o.quantity &&
          unit_price == o.unit_price &&
          trading_unit == o.trading_unit &&
          measurement_unit == o.measurement_unit &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, contract_number, product_id, link_id, buying_company_id, buying_user_id, selling_company_id, selling_user_id, tendency, created_at, quantity, unit_price, trading_unit, measurement_unit, status].hash
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
