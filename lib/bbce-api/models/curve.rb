=begin
#BBCE Bus API

#Endpoint's specifications for routes allowed for direct client usage.

OpenAPI spec version: 1.0.0

=end

require 'date'

module BbceApi
  class Curve
    # Data source
    attr_accessor :data_source

    # Nome da curva
    attr_accessor :name

    # Tipo do cálculo
    attr_accessor :identity

    # Data do vértice
    attr_accessor :vertex_date

    # Valor do vertice
    attr_accessor :vertex_value

    # Data de referência do calculo da curva
    attr_accessor :date

    # Data de criação da tupla
    attr_accessor :created_at

    # Data de criação da tupla
    attr_accessor :updated_at

    # Id da curva
    attr_accessor :id

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
        :'data_source' => :'dataSource',
        :'name' => :'name',
        :'identity' => :'identity',
        :'vertex_date' => :'vertexDate',
        :'vertex_value' => :'vertexValue',
        :'date' => :'date',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'id' => :'id'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'data_source' => :'Object',
        :'name' => :'Object',
        :'identity' => :'Object',
        :'vertex_date' => :'Object',
        :'vertex_value' => :'Object',
        :'date' => :'Object',
        :'created_at' => :'Object',
        :'updated_at' => :'Object',
        :'id' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `BbceApi::Curve` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BbceApi::Curve`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'data_source')
        self.data_source = attributes[:'data_source']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'identity')
        self.identity = attributes[:'identity']
      end

      if attributes.key?(:'vertex_date')
        self.vertex_date = attributes[:'vertex_date']
      end

      if attributes.key?(:'vertex_value')
        self.vertex_value = attributes[:'vertex_value']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @data_source.nil?
        invalid_properties.push('invalid value for "data_source", data_source cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @identity.nil?
        invalid_properties.push('invalid value for "identity", identity cannot be nil.')
      end

      if @vertex_date.nil?
        invalid_properties.push('invalid value for "vertex_date", vertex_date cannot be nil.')
      end

      if @vertex_value.nil?
        invalid_properties.push('invalid value for "vertex_value", vertex_value cannot be nil.')
      end

      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @data_source.nil?
      data_source_validator = EnumAttributeValidator.new('Object', ['B3', 'BBCE'])
      return false unless data_source_validator.valid?(@data_source)
      return false if @name.nil?
      name_validator = EnumAttributeValidator.new('Object', ['PREDI', 'PLD'])
      return false unless name_validator.valid?(@name)
      return false if @identity.nil?
      identity_validator = EnumAttributeValidator.new('Object', ['CURVE'])
      return false unless identity_validator.valid?(@identity)
      return false if @vertex_date.nil?
      return false if @vertex_value.nil?
      return false if @date.nil?
      return false if @id.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data_source Object to be assigned
    def data_source=(data_source)
      validator = EnumAttributeValidator.new('Object', ['B3', 'BBCE'])
      unless validator.valid?(data_source)
        fail ArgumentError, "invalid value for \"data_source\", must be one of #{validator.allowable_values}."
      end
      @data_source = data_source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name)
      validator = EnumAttributeValidator.new('Object', ['PREDI', 'PLD'])
      unless validator.valid?(name)
        fail ArgumentError, "invalid value for \"name\", must be one of #{validator.allowable_values}."
      end
      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] identity Object to be assigned
    def identity=(identity)
      validator = EnumAttributeValidator.new('Object', ['CURVE'])
      unless validator.valid?(identity)
        fail ArgumentError, "invalid value for \"identity\", must be one of #{validator.allowable_values}."
      end
      @identity = identity
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          data_source == o.data_source &&
          name == o.name &&
          identity == o.identity &&
          vertex_date == o.vertex_date &&
          vertex_value == o.vertex_value &&
          date == o.date &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          id == o.id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [data_source, name, identity, vertex_date, vertex_value, date, created_at, updated_at, id].hash
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
