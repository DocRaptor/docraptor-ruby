require 'date'

module DocRaptor
  class AsyncDocStatus
    # The present status of the document. Can be queued, working, completed, and failed.
    attr_accessor :status

    # The URL where the document can be retrieved. This URL may only be used a few times.
    attr_accessor :download_url

    # The identifier for downloading the document with the download api.
    attr_accessor :download_id

    # Additional information.
    attr_accessor :message

    # Number of PDF pages in document.
    attr_accessor :number_of_pages

    # Error information.
    attr_accessor :validation_errors

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'status' => :'status',
        
        :'download_url' => :'download_url',
        
        :'download_id' => :'download_id',
        
        :'message' => :'message',
        
        :'number_of_pages' => :'number_of_pages',
        
        :'validation_errors' => :'validation_errors'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'status' => :'String',
        :'download_url' => :'String',
        :'download_id' => :'String',
        :'message' => :'String',
        :'number_of_pages' => :'Integer',
        :'validation_errors' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'status']
        self.status = attributes[:'status']
      end
      
      if attributes[:'download_url']
        self.download_url = attributes[:'download_url']
      end
      
      if attributes[:'download_id']
        self.download_id = attributes[:'download_id']
      end
      
      if attributes[:'message']
        self.message = attributes[:'message']
      end
      
      if attributes[:'number_of_pages']
        self.number_of_pages = attributes[:'number_of_pages']
      end
      
      if attributes[:'validation_errors']
        self.validation_errors = attributes[:'validation_errors']
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          status == o.status &&
          download_url == o.download_url &&
          download_id == o.download_id &&
          message == o.message &&
          number_of_pages == o.number_of_pages &&
          validation_errors == o.validation_errors
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [status, download_url, download_id, message, number_of_pages, validation_errors].hash
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
