require 'date'

module DocRaptor

  class PrinceOptions
    # Set the baseurl for assets.
    attr_accessor :baseurl

    # Disable XML inclusion.
    attr_accessor :no_xinclude

    # Disable network access.
    attr_accessor :no_network

    # Disables parallel fetching of assets during PDF creation. Useful if your asset host has strict rate limiting.
    attr_accessor :no_parallel_downloads

    # Set the user for HTTP authentication.
    attr_accessor :http_user

    # Set the password for HTTP authentication.
    attr_accessor :http_password

    # Set the HTTP proxy server.
    attr_accessor :http_proxy

    # Set the HTTP request timeout.
    attr_accessor :http_timeout

    # Disable SSL verification.
    attr_accessor :insecure

    # Specify the CSS media type. Defaults to \"print\" but you may want to use \"screen\" for web styles.
    attr_accessor :media

    # Ignore author stylesheets.
    attr_accessor :no_author_style

    # Ignore default stylesheets.
    attr_accessor :no_default_style

    # Disable font embedding in PDFs.
    attr_accessor :no_embed_fonts

    # Disable font subsetting in PDFs.
    attr_accessor :no_subset_fonts

    # Disable PDF compression.
    attr_accessor :no_compress

    # Encrypt PDF output.
    attr_accessor :encrypt

    # Set encryption key size.
    attr_accessor :key_bits

    # Set the PDF user password.
    attr_accessor :user_password

    # Set the PDF owner password.
    attr_accessor :owner_password

    # Disallow printing of this PDF.
    attr_accessor :disallow_print

    # Disallow copying of this PDF.
    attr_accessor :disallow_copy

    # Disallow annotation of this PDF.
    attr_accessor :disallow_annotate

    # Disallow modification of this PDF.
    attr_accessor :disallow_modify

    # Enable Prince debug mode.
    attr_accessor :debug

    # Specify the input format.
    attr_accessor :input

    # Specify a specific verison of PrinceXML to use.
    attr_accessor :version

    # Enable PrinceXML JavaScript. DocRaptor JavaScript parsing is also available elsewhere.
    attr_accessor :javascript

    # Set the DPI when rendering CSS. Defaults to 96 but can be set with Prince 9.0 and up.
    attr_accessor :css_dpi

    # In Prince 9.0 and up you can set the PDF profile.
    attr_accessor :profile

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
        :'baseurl' => :'baseurl',
        :'no_xinclude' => :'no_xinclude',
        :'no_network' => :'no_network',
        :'no_parallel_downloads' => :'no_parallel_downloads',
        :'http_user' => :'http_user',
        :'http_password' => :'http_password',
        :'http_proxy' => :'http_proxy',
        :'http_timeout' => :'http_timeout',
        :'insecure' => :'insecure',
        :'media' => :'media',
        :'no_author_style' => :'no_author_style',
        :'no_default_style' => :'no_default_style',
        :'no_embed_fonts' => :'no_embed_fonts',
        :'no_subset_fonts' => :'no_subset_fonts',
        :'no_compress' => :'no_compress',
        :'encrypt' => :'encrypt',
        :'key_bits' => :'key_bits',
        :'user_password' => :'user_password',
        :'owner_password' => :'owner_password',
        :'disallow_print' => :'disallow_print',
        :'disallow_copy' => :'disallow_copy',
        :'disallow_annotate' => :'disallow_annotate',
        :'disallow_modify' => :'disallow_modify',
        :'debug' => :'debug',
        :'input' => :'input',
        :'version' => :'version',
        :'javascript' => :'javascript',
        :'css_dpi' => :'css_dpi',
        :'profile' => :'profile'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'baseurl' => :'String',
        :'no_xinclude' => :'BOOLEAN',
        :'no_network' => :'BOOLEAN',
        :'no_parallel_downloads' => :'BOOLEAN',
        :'http_user' => :'String',
        :'http_password' => :'String',
        :'http_proxy' => :'String',
        :'http_timeout' => :'Integer',
        :'insecure' => :'BOOLEAN',
        :'media' => :'String',
        :'no_author_style' => :'BOOLEAN',
        :'no_default_style' => :'BOOLEAN',
        :'no_embed_fonts' => :'BOOLEAN',
        :'no_subset_fonts' => :'BOOLEAN',
        :'no_compress' => :'BOOLEAN',
        :'encrypt' => :'BOOLEAN',
        :'key_bits' => :'Integer',
        :'user_password' => :'String',
        :'owner_password' => :'String',
        :'disallow_print' => :'BOOLEAN',
        :'disallow_copy' => :'BOOLEAN',
        :'disallow_annotate' => :'BOOLEAN',
        :'disallow_modify' => :'BOOLEAN',
        :'debug' => :'BOOLEAN',
        :'input' => :'String',
        :'version' => :'String',
        :'javascript' => :'BOOLEAN',
        :'css_dpi' => :'Integer',
        :'profile' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'baseurl')
        self.baseurl = attributes[:'baseurl']
      end

      if attributes.has_key?(:'no_xinclude')
        self.no_xinclude = attributes[:'no_xinclude']
      end

      if attributes.has_key?(:'no_network')
        self.no_network = attributes[:'no_network']
      end

      if attributes.has_key?(:'no_parallel_downloads')
        self.no_parallel_downloads = attributes[:'no_parallel_downloads']
      end

      if attributes.has_key?(:'http_user')
        self.http_user = attributes[:'http_user']
      end

      if attributes.has_key?(:'http_password')
        self.http_password = attributes[:'http_password']
      end

      if attributes.has_key?(:'http_proxy')
        self.http_proxy = attributes[:'http_proxy']
      end

      if attributes.has_key?(:'http_timeout')
        self.http_timeout = attributes[:'http_timeout']
      end

      if attributes.has_key?(:'insecure')
        self.insecure = attributes[:'insecure']
      end

      if attributes.has_key?(:'media')
        self.media = attributes[:'media']
      else
        self.media = "print"
      end

      if attributes.has_key?(:'no_author_style')
        self.no_author_style = attributes[:'no_author_style']
      end

      if attributes.has_key?(:'no_default_style')
        self.no_default_style = attributes[:'no_default_style']
      end

      if attributes.has_key?(:'no_embed_fonts')
        self.no_embed_fonts = attributes[:'no_embed_fonts']
      end

      if attributes.has_key?(:'no_subset_fonts')
        self.no_subset_fonts = attributes[:'no_subset_fonts']
      end

      if attributes.has_key?(:'no_compress')
        self.no_compress = attributes[:'no_compress']
      end

      if attributes.has_key?(:'encrypt')
        self.encrypt = attributes[:'encrypt']
      end

      if attributes.has_key?(:'key_bits')
        self.key_bits = attributes[:'key_bits']
      end

      if attributes.has_key?(:'user_password')
        self.user_password = attributes[:'user_password']
      end

      if attributes.has_key?(:'owner_password')
        self.owner_password = attributes[:'owner_password']
      end

      if attributes.has_key?(:'disallow_print')
        self.disallow_print = attributes[:'disallow_print']
      end

      if attributes.has_key?(:'disallow_copy')
        self.disallow_copy = attributes[:'disallow_copy']
      end

      if attributes.has_key?(:'disallow_annotate')
        self.disallow_annotate = attributes[:'disallow_annotate']
      end

      if attributes.has_key?(:'disallow_modify')
        self.disallow_modify = attributes[:'disallow_modify']
      end

      if attributes.has_key?(:'debug')
        self.debug = attributes[:'debug']
      end

      if attributes.has_key?(:'input')
        self.input = attributes[:'input']
      else
        self.input = "html"
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.has_key?(:'javascript')
        self.javascript = attributes[:'javascript']
      end

      if attributes.has_key?(:'css_dpi')
        self.css_dpi = attributes[:'css_dpi']
      end

      if attributes.has_key?(:'profile')
        self.profile = attributes[:'profile']
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
      input_validator = EnumAttributeValidator.new('String', ["html", "xml", "auto"])
      return false unless input_validator.valid?(@input)
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] input Object to be assigned
    def input=(input)
      validator = EnumAttributeValidator.new('String', ["html", "xml", "auto"])
      unless validator.valid?(input)
        fail ArgumentError, "invalid value for 'input', must be one of #{validator.allowable_values}."
      end
      @input = input
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          baseurl == o.baseurl &&
          no_xinclude == o.no_xinclude &&
          no_network == o.no_network &&
          no_parallel_downloads == o.no_parallel_downloads &&
          http_user == o.http_user &&
          http_password == o.http_password &&
          http_proxy == o.http_proxy &&
          http_timeout == o.http_timeout &&
          insecure == o.insecure &&
          media == o.media &&
          no_author_style == o.no_author_style &&
          no_default_style == o.no_default_style &&
          no_embed_fonts == o.no_embed_fonts &&
          no_subset_fonts == o.no_subset_fonts &&
          no_compress == o.no_compress &&
          encrypt == o.encrypt &&
          key_bits == o.key_bits &&
          user_password == o.user_password &&
          owner_password == o.owner_password &&
          disallow_print == o.disallow_print &&
          disallow_copy == o.disallow_copy &&
          disallow_annotate == o.disallow_annotate &&
          disallow_modify == o.disallow_modify &&
          debug == o.debug &&
          input == o.input &&
          version == o.version &&
          javascript == o.javascript &&
          css_dpi == o.css_dpi &&
          profile == o.profile
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [baseurl, no_xinclude, no_network, no_parallel_downloads, http_user, http_password, http_proxy, http_timeout, insecure, media, no_author_style, no_default_style, no_embed_fonts, no_subset_fonts, no_compress, encrypt, key_bits, user_password, owner_password, disallow_print, disallow_copy, disallow_annotate, disallow_modify, debug, input, version, javascript, css_dpi, profile].hash
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
