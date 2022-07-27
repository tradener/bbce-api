=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class NegotiableTicker
    # Identification of Ticker
    attr_accessor :id

    # Ticker description
    attr_accessor :description

    # Minimum Lot
    attr_accessor :minimum_lot

    # Minimum Incremental of Lot
    attr_accessor :minimum_increment

    # Trading Unit
    attr_accessor :trading_unit

    # Measurement Unit
    attr_accessor :measurement_unit

    attr_accessor :price_type

    # Sum of Conversion Factor of each CashFlow
    attr_accessor :total_conversion_factor

    attr_accessor :company_profile

    attr_accessor :features

    attr_accessor :stamp

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'description' => :'description',
        :'minimum_lot' => :'minimumLot',
        :'minimum_increment' => :'minimumIncrement',
        :'trading_unit' => :'tradingUnit',
        :'measurement_unit' => :'measurementUnit',
        :'price_type' => :'priceType',
        :'total_conversion_factor' => :'totalConversionFactor',
        :'company_profile' => :'companyProfile',
        :'features' => :'features',
        :'stamp' => :'stamp'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Object',
        :'description' => :'Object',
        :'minimum_lot' => :'Object',
        :'minimum_increment' => :'Object',
        :'trading_unit' => :'Object',
        :'measurement_unit' => :'Object',
        :'price_type' => :'Object',
        :'total_conversion_factor' => :'Object',
        :'company_profile' => :'Object',
        :'features' => :'Object',
        :'stamp' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BbceApi::NegotiableTicker` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BbceApi::NegotiableTicker`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'minimum_lot')
        self.minimum_lot = attributes[:'minimum_lot']
      end

      if attributes.key?(:'minimum_increment')
        self.minimum_increment = attributes[:'minimum_increment']
      end

      if attributes.key?(:'trading_unit')
        self.trading_unit = attributes[:'trading_unit']
      end

      if attributes.key?(:'measurement_unit')
        self.measurement_unit = attributes[:'measurement_unit']
      end

      if attributes.key?(:'price_type')
        self.price_type = attributes[:'price_type']
      end

      if attributes.key?(:'total_conversion_factor')
        self.total_conversion_factor = attributes[:'total_conversion_factor']
      end

      if attributes.key?(:'company_profile')
        self.company_profile = attributes[:'company_profile']
      end

      if attributes.key?(:'features')
        if (value = attributes[:'features']).is_a?(Array)
          self.features = value
        end
      end

      if attributes.key?(:'stamp')
        self.stamp = attributes[:'stamp']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @minimum_lot.nil?
        invalid_properties.push('invalid value for "minimum_lot", minimum_lot cannot be nil.')
      end

      if @minimum_increment.nil?
        invalid_properties.push('invalid value for "minimum_increment", minimum_increment cannot be nil.')
      end

      if @trading_unit.nil?
        invalid_properties.push('invalid value for "trading_unit", trading_unit cannot be nil.')
      end

      if @measurement_unit.nil?
        invalid_properties.push('invalid value for "measurement_unit", measurement_unit cannot be nil.')
      end

      if @price_type.nil?
        invalid_properties.push('invalid value for "price_type", price_type cannot be nil.')
      end

      if @total_conversion_factor.nil?
        invalid_properties.push('invalid value for "total_conversion_factor", total_conversion_factor cannot be nil.')
      end

      if @company_profile.nil?
        invalid_properties.push('invalid value for "company_profile", company_profile cannot be nil.')
      end

      if @features.nil?
        invalid_properties.push('invalid value for "features", features cannot be nil.')
      end

      if @stamp.nil?
        invalid_properties.push('invalid value for "stamp", stamp cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @description.nil?
      return false if @minimum_lot.nil?
      return false if @minimum_increment.nil?
      return false if @trading_unit.nil?
      return false if @measurement_unit.nil?
      return false if @price_type.nil?
      return false if @total_conversion_factor.nil?
      return false if @company_profile.nil?
      return false if @features.nil?
      return false if @stamp.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          description == o.description &&
          minimum_lot == o.minimum_lot &&
          minimum_increment == o.minimum_increment &&
          trading_unit == o.trading_unit &&
          measurement_unit == o.measurement_unit &&
          price_type == o.price_type &&
          total_conversion_factor == o.total_conversion_factor &&
          company_profile == o.company_profile &&
          features == o.features &&
          stamp == o.stamp
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, description, minimum_lot, minimum_increment, trading_unit, measurement_unit, price_type, total_conversion_factor, company_profile, features, stamp].hash
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
