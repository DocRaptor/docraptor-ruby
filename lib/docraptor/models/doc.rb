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

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'name']
        self.name = attributes[:'name']
      end
      
      if attributes[:'document_type']
        self.document_type = attributes[:'document_type']
      end
      
      if attributes[:'document_content']
        self.document_content = attributes[:'document_content']
      end
      
      if attributes[:'document_url']
        self.document_url = attributes[:'document_url']
      end
      
      if attributes[:'test']
        self.test = attributes[:'test']
      else
        self.test = true
      end
      
      if attributes[:'strict']
        self.strict = attributes[:'strict']
      else
        self.strict = "none"
      end
      
      if attributes[:'ignore_resource_errors']
        self.ignore_resource_errors = attributes[:'ignore_resource_errors']
      else
        self.ignore_resource_errors = true
      end
      
      if attributes[:'tag']
        self.tag = attributes[:'tag']
      end
      
      if attributes[:'help']
        self.help = attributes[:'help']
      else
        self.help = false
      end
      
      if attributes[:'javascript']
        self.javascript = attributes[:'javascript']
      else
        self.javascript = false
      end
      
      if attributes[:'referrer']
        self.referrer = attributes[:'referrer']
      end
      
      if attributes[:'callback_url']
        self.callback_url = attributes[:'callback_url']
      end
      
      if attributes[:'prince_options']
        self.prince_options = attributes[:'prince_options']
      end
      
    end

    # Custom attribute writer method checking allowed values (enum).
    def document_type=(document_type)
      allowed_values = ["pdf", "xls", "xlsx"]
      if document_type && !allowed_values.include?(document_type)
        fail "invalid value for 'document_type', must be one of #{allowed_values}"
      end
      @document_type = document_type
    end

    # Custom attribute writer method checking allowed values (enum).
    def strict=(strict)
      allowed_values = ["none"]
      if strict && !allowed_values.include?(strict)
        fail "invalid value for 'strict', must be one of #{allowed_values}"
      end
      @strict = strict
    end

    # Check equality by comparing each attribute.
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
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [name, document_type, document_content, document_url, test, strict, ignore_resource_errors, tag, help, javascript, referrer, callback_url, prince_options].hash
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
        if value =~ /^(true|t|yes|y|1)$/i
          true
        else
          false
        end
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
