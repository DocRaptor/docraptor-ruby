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

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}


      if attributes[:'baseurl']
        self.baseurl = attributes[:'baseurl']
      end

      if attributes[:'no_xinclude']
        self.no_xinclude = attributes[:'no_xinclude']
      end

      if attributes[:'no_network']
        self.no_network = attributes[:'no_network']
      end

      if attributes[:'no_parallel_downloads']
        self.no_parallel_downloads = attributes[:'no_parallel_downloads']
      end

      if attributes[:'http_user']
        self.http_user = attributes[:'http_user']
      end

      if attributes[:'http_password']
        self.http_password = attributes[:'http_password']
      end

      if attributes[:'http_proxy']
        self.http_proxy = attributes[:'http_proxy']
      end

      if attributes[:'http_timeout']
        self.http_timeout = attributes[:'http_timeout']
      end

      if attributes[:'insecure']
        self.insecure = attributes[:'insecure']
      end

      if attributes[:'media']
        self.media = attributes[:'media']
      else
        self.media = "print"
      end

      if attributes[:'no_author_style']
        self.no_author_style = attributes[:'no_author_style']
      end

      if attributes[:'no_default_style']
        self.no_default_style = attributes[:'no_default_style']
      end

      if attributes[:'no_embed_fonts']
        self.no_embed_fonts = attributes[:'no_embed_fonts']
      end

      if attributes[:'no_subset_fonts']
        self.no_subset_fonts = attributes[:'no_subset_fonts']
      end

      if attributes[:'no_compress']
        self.no_compress = attributes[:'no_compress']
      end

      if attributes[:'encrypt']
        self.encrypt = attributes[:'encrypt']
      end

      if attributes[:'key_bits']
        self.key_bits = attributes[:'key_bits']
      end

      if attributes[:'user_password']
        self.user_password = attributes[:'user_password']
      end

      if attributes[:'owner_password']
        self.owner_password = attributes[:'owner_password']
      end

      if attributes[:'disallow_print']
        self.disallow_print = attributes[:'disallow_print']
      end

      if attributes[:'disallow_copy']
        self.disallow_copy = attributes[:'disallow_copy']
      end

      if attributes[:'disallow_annotate']
        self.disallow_annotate = attributes[:'disallow_annotate']
      end

      if attributes[:'disallow_modify']
        self.disallow_modify = attributes[:'disallow_modify']
      end

      if attributes[:'debug']
        self.debug = attributes[:'debug']
      end

      if attributes[:'input']
        self.input = attributes[:'input']
      else
        self.input = "html"
      end

      if attributes[:'version']
        self.version = attributes[:'version']
      end

      if attributes[:'javascript']
        self.javascript = attributes[:'javascript']
      end

      if attributes[:'css_dpi']
        self.css_dpi = attributes[:'css_dpi']
      end

      if attributes[:'profile']
        self.profile = attributes[:'profile']
      end

    end

    # Custom attribute writer method checking allowed values (enum).
    def input=(input)
      allowed_values = ["html", "xml", "auto"]
      if input && !allowed_values.include?(input)
        fail "invalid value for 'input', must be one of #{allowed_values}"
      end
      @input = input
    end

    # Check equality by comparing each attribute.
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
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [baseurl, no_xinclude, no_network, no_parallel_downloads, http_user, http_password, http_proxy, http_timeout, insecure, media, no_author_style, no_default_style, no_embed_fonts, no_subset_fonts, no_compress, encrypt, key_bits, user_password, owner_password, disallow_print, disallow_copy, disallow_annotate, disallow_modify, debug, input, version, javascript, css_dpi, profile].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

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
        _model = DocRaptor.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
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
