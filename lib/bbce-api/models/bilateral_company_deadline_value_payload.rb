=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class BilateralCompanyDeadlineValuePayload
    attr_accessor :deadline_type

    attr_accessor :deadline_begin

    attr_accessor :deadline_end

    attr_accessor :limit_type

    attr_accessor :purchase_limit

    attr_accessor :sale_limit

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'deadline_type' => :'deadlineType',
        :'deadline_begin' => :'deadlineBegin',
        :'deadline_end' => :'deadlineEnd',
        :'limit_type' => :'limitType',
        :'purchase_limit' => :'purchaseLimit',
        :'sale_limit' => :'saleLimit'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'deadline_type' => :'',
        :'deadline_begin' => :'',
        :'deadline_end' => :'',
        :'limit_type' => :'',
        :'purchase_limit' => :'',
        :'sale_limit' => :''
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BbceApi::BilateralCompanyDeadlineValuePayload` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BbceApi::BilateralCompanyDeadlineValuePayload`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'deadline_type')
        self.deadline_type = attributes[:'deadline_type']
      end

      if attributes.key?(:'deadline_begin')
        self.deadline_begin = attributes[:'deadline_begin']
      end

      if attributes.key?(:'deadline_end')
        self.deadline_end = attributes[:'deadline_end']
      end

      if attributes.key?(:'limit_type')
        self.limit_type = attributes[:'limit_type']
      end

      if attributes.key?(:'purchase_limit')
        self.purchase_limit = attributes[:'purchase_limit']
      end

      if attributes.key?(:'sale_limit')
        self.sale_limit = attributes[:'sale_limit']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @deadline_type.nil?
        invalid_properties.push('invalid value for "deadline_type", deadline_type cannot be nil.')
      end

      if @deadline_begin.nil?
        invalid_properties.push('invalid value for "deadline_begin", deadline_begin cannot be nil.')
      end

      if @deadline_end.nil?
        invalid_properties.push('invalid value for "deadline_end", deadline_end cannot be nil.')
      end

      if @limit_type.nil?
        invalid_properties.push('invalid value for "limit_type", limit_type cannot be nil.')
      end

      if @purchase_limit.nil?
        invalid_properties.push('invalid value for "purchase_limit", purchase_limit cannot be nil.')
      end

      if @sale_limit.nil?
        invalid_properties.push('invalid value for "sale_limit", sale_limit cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @deadline_type.nil?
      deadline_type_validator = EnumAttributeValidator.new('', ['M', 'Y'])
      return false unless deadline_type_validator.valid?(@deadline_type)
      return false if @deadline_begin.nil?
      return false if @deadline_end.nil?
      return false if @limit_type.nil?
      return false if @purchase_limit.nil?
      return false if @sale_limit.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deadline_type Object to be assigned
    def deadline_type=(deadline_type)
      validator = EnumAttributeValidator.new('', ['M', 'Y'])
      unless validator.valid?(deadline_type)
        fail ArgumentError, "invalid value for \"deadline_type\", must be one of #{validator.allowable_values}."
      end
      @deadline_type = deadline_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          deadline_type == o.deadline_type &&
          deadline_begin == o.deadline_begin &&
          deadline_end == o.deadline_end &&
          limit_type == o.limit_type &&
          purchase_limit == o.purchase_limit &&
          sale_limit == o.sale_limit
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [deadline_type, deadline_begin, deadline_end, limit_type, purchase_limit, sale_limit].hash
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
