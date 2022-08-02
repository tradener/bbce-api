=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class CreateTickerLink
    # Identification of Link
    attr_accessor :link_id

    # Minimum Lot
    attr_accessor :minimum_lot

    # Minimum Incremental of Lot
    attr_accessor :minimum_increment

    attr_accessor :price_type

    # Start of permanence
    attr_accessor :start_permanence

    # End of permanence
    attr_accessor :end_permanence

    attr_accessor :features

    attr_accessor :cash_flows

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'link_id' => :'linkId',
        :'minimum_lot' => :'minimumLot',
        :'minimum_increment' => :'minimumIncrement',
        :'price_type' => :'priceType',
        :'start_permanence' => :'startPermanence',
        :'end_permanence' => :'endPermanence',
        :'features' => :'features',
        :'cash_flows' => :'cashFlows'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'link_id' => :'Object',
        :'minimum_lot' => :'Object',
        :'minimum_increment' => :'Object',
        :'price_type' => :'Object',
        :'start_permanence' => :'Object',
        :'end_permanence' => :'Object',
        :'features' => :'Object',
        :'cash_flows' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BbceApi::CreateTickerLink` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BbceApi::CreateTickerLink`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'link_id')
        self.link_id = attributes[:'link_id']
      end

      if attributes.key?(:'minimum_lot')
        self.minimum_lot = attributes[:'minimum_lot']
      end

      if attributes.key?(:'minimum_increment')
        self.minimum_increment = attributes[:'minimum_increment']
      end

      if attributes.key?(:'price_type')
        self.price_type = attributes[:'price_type']
      end

      if attributes.key?(:'start_permanence')
        self.start_permanence = attributes[:'start_permanence']
      end

      if attributes.key?(:'end_permanence')
        self.end_permanence = attributes[:'end_permanence']
      end

      if attributes.key?(:'features')
        if (value = attributes[:'features']).is_a?(Array)
          self.features = value
        end
      end

      if attributes.key?(:'cash_flows')
        if (value = attributes[:'cash_flows']).is_a?(Array)
          self.cash_flows = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @link_id.nil?
        invalid_properties.push('invalid value for "link_id", link_id cannot be nil.')
      end

      if @minimum_lot.nil?
        invalid_properties.push('invalid value for "minimum_lot", minimum_lot cannot be nil.')
      end

      if @minimum_increment.nil?
        invalid_properties.push('invalid value for "minimum_increment", minimum_increment cannot be nil.')
      end

      if @price_type.nil?
        invalid_properties.push('invalid value for "price_type", price_type cannot be nil.')
      end

      if @cash_flows.nil?
        invalid_properties.push('invalid value for "cash_flows", cash_flows cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @link_id.nil?
      return false if @minimum_lot.nil?
      return false if @minimum_increment.nil?
      return false if @price_type.nil?
      return false if @cash_flows.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          link_id == o.link_id &&
          minimum_lot == o.minimum_lot &&
          minimum_increment == o.minimum_increment &&
          price_type == o.price_type &&
          start_permanence == o.start_permanence &&
          end_permanence == o.end_permanence &&
          features == o.features &&
          cash_flows == o.cash_flows
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [link_id, minimum_lot, minimum_increment, price_type, start_permanence, end_permanence, features, cash_flows].hash
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
