module DocRaptor
  # 
  class Doc < BaseObject
    attr_accessor :name, :document_type, :document_content, :document_url, :test, :strict, :tag, :help, :javascript, :referrer, :callback_url, :prince_options
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # A name for identifying your document.
        :'name' => :'name',
        
        # The type of document being created.
        :'document_type' => :'document_type',
        
        # The HTML data to be transformed into a document.\nYou must supply content using document_content or document_url.
        :'document_content' => :'document_content',
        
        # The URL to fetch the HTML data to be transformed into a document.\nYou must supply content using document_content or document_url.
        :'document_url' => :'document_url',
        
        # Enable test mode for this document. Test documents are not charged for but include a watermark.
        :'test' => :'test',
        
        # Force strict HTML validation.
        :'strict' => :'strict',
        
        # A field for storing a small amount of metadata with this document.
        :'tag' => :'tag',
        
        # Request support help with this request if it succeeds.
        :'help' => :'help',
        
        # Enable DocRaptor JavaScript parsing. PrinceXML JavaScript parsing is also available elsewhere.
        :'javascript' => :'javascript',
        
        # Set HTTP referrer when generating this document.
        :'referrer' => :'referrer',
        
        # A URL that will receive a POST request after successfully completing an asynchronous document.\nThe POST data will include download_url and download_id similar to status api responses.\nWARNING: this only works on asynchronous documents.
        :'callback_url' => :'callback_url',
        
        # 
        :'prince_options' => :'prince_options'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'name' => :'String',
        :'document_type' => :'String',
        :'document_content' => :'String',
        :'document_url' => :'String',
        :'test' => :'BOOLEAN',
        :'strict' => :'String',
        :'tag' => :'String',
        :'help' => :'BOOLEAN',
        :'javascript' => :'BOOLEAN',
        :'referrer' => :'String',
        :'callback_url' => :'String',
        :'prince_options' => :'PrinceOptions'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

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
      end
      
      if attributes[:'strict']
        self.strict = attributes[:'strict']
      end
      
      if attributes[:'tag']
        self.tag = attributes[:'tag']
      end
      
      if attributes[:'help']
        self.help = attributes[:'help']
      end
      
      if attributes[:'javascript']
        self.javascript = attributes[:'javascript']
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

    def document_type=(document_type)
      allowed_values = ["pdf", "xls", "xlsx"]
      if document_type && !allowed_values.include?(document_type)
        fail "invalid value for 'document_type', must be one of #{allowed_values}"
      end
      @document_type = document_type
    end

    def strict=(strict)
      allowed_values = ["none"]
      if strict && !allowed_values.include?(strict)
        fail "invalid value for 'strict', must be one of #{allowed_values}"
      end
      @strict = strict
    end

  end
end
