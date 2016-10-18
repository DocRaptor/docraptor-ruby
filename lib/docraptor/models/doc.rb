require 'date'

module DocRaptor

  class Doc
    # A name for identifying your document.
    attr_accessor :name

    # The type of document being created.
    attr_accessor :document_type

    # The HTML data to be transformed into a document. You must supply content using document_content or document_url.
    attr_accessor :document_content

    # The URL to fetch the HTML data to be transformed into a document. You must supply content using document_content or document_url.
    attr_accessor :document_url

    # Enable test mode for this document. Test documents are not charged for but include a watermark.
    attr_accessor :test

    # Force strict HTML validation.
    attr_accessor :strict

    # Failed loading of images/javascripts/stylesheets/etc. will not cause the rendering to stop.
    attr_accessor :ignore_resource_errors

    # A field for storing a small amount of metadata with this document.
    attr_accessor :tag

    # Request support help with this request if it succeeds.
    attr_accessor :help

    # Enable DocRaptor JavaScript parsing. PrinceXML JavaScript parsing is also available elsewhere.
    attr_accessor :javascript

    # Set HTTP referrer when generating this document.
    attr_accessor :referrer

    # A URL that will receive a POST request after successfully completing an asynchronous document. The POST data will include download_url and download_id similar to status api responses. WARNING: this only works on asynchronous documents.
    attr_accessor :callback_url

    attr_accessor :prince_options

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
        :'name' => :'name',
        :'document_type' => :'document_type',
        :'document_content' => :'document_content',
        :'document_url' => :'document_url',
        :'test' => :'test',
        :'strict' => :'strict',
        :'ignore_resource_errors' => :'ignore_resource_errors',
        :'tag' => :'tag',
        :'help' => :'help',
        :'javascript' => :'javascript',
        :'referrer' => :'referrer',
        :'callback_url' => :'callback_url',
        :'prince_options' => :'prince_options'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'document_type' => :'String',
        :'document_content' => :'String',
        :'document_url' => :'String',
        :'test' => :'BOOLEAN',
        :'strict' => :'String',
        :'ignore_resource_errors' => :'BOOLEAN',
        :'tag' => :'String',
        :'help' => :'BOOLEAN',
        :'javascript' => :'BOOLEAN',
        :'referrer' => :'String',
        :'callback_url' => :'String',
        :'prince_options' => :'PrinceOptions'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'document_type')
        self.document_type = attributes[:'document_type']
      end

      if attributes.has_key?(:'document_content')
        self.document_content = attributes[:'document_content']
      end

      if attributes.has_key?(:'document_url')
        self.document_url = attributes[:'document_url']
      end

      if attributes.has_key?(:'test')
        self.test = attributes[:'test']
      else
        self.test = true
      end

      if attributes.has_key?(:'strict')
        self.strict = attributes[:'strict']
      else
        self.strict = "none"
      end

      if attributes.has_key?(:'ignore_resource_errors')
        self.ignore_resource_errors = attributes[:'ignore_resource_errors']
      else
        self.ignore_resource_errors = true
      end

      if attributes.has_key?(:'tag')
        self.tag = attributes[:'tag']
      end

      if attributes.has_key?(:'help')
        self.help = attributes[:'help']
      else
        self.help = false
      end

      if attributes.has_key?(:'javascript')
        self.javascript = attributes[:'javascript']
      else
        self.javascript = false
      end

      if attributes.has_key?(:'referrer')
        self.referrer = attributes[:'referrer']
      end

      if attributes.has_key?(:'callback_url')
        self.callback_url = attributes[:'callback_url']
      end

      if attributes.has_key?(:'prince_options')
        self.prince_options = attributes[:'prince_options']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @document_type.nil?
      document_type_validator = EnumAttributeValidator.new('String', ["pdf", "xls", "xlsx"])
      return false unless document_type_validator.valid?(@document_type)
      strict_validator = EnumAttributeValidator.new('String', ["none"])
      return false unless strict_validator.valid?(@strict)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] document_type Object to be assigned
    def document_type=(document_type)
      validator = EnumAttributeValidator.new('String', ["pdf", "xls", "xlsx"])
      unless validator.valid?(document_type)
        fail ArgumentError, "invalid value for 'document_type', must be one of #{validator.allowable_values}."
      end
      @document_type = document_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] strict Object to be assigned
    def strict=(strict)
      validator = EnumAttributeValidator.new('String', ["none"])
      unless validator.valid?(strict)
        fail ArgumentError, "invalid value for 'strict', must be one of #{validator.allowable_values}."
      end
      @strict = strict
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          document_type == o.document_type &&
          document_content == o.document_content &&
          document_url == o.document_url &&
          test == o.test &&
          strict == o.strict &&
          ignore_resource_errors == o.ignore_resource_errors &&
          tag == o.tag &&
          help == o.help &&
          javascript == o.javascript &&
          referrer == o.referrer &&
          callback_url == o.callback_url &&
          prince_options == o.prince_options
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, document_type, document_content, document_url, test, strict, ignore_resource_errors, tag, help, javascript, referrer, callback_url, prince_options].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
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
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = DocRaptor.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
