module DocRaptor
  # 
  class AsyncDocStatus < BaseObject
    attr_accessor :status, :download_url, :download_id, :message, :number_of_pages, :validation_errors
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # The present status of the document. Can be queued, working, completed, and failed.
        :'status' => :'status',
        
        # The URL where the document can be retrieved. This URL may only be used a few times.
        :'download_url' => :'download_url',
        
        # The identifier for downloading the document with the download api.
        :'download_id' => :'download_id',
        
        # Additional information.
        :'message' => :'message',
        
        # Number of PDF pages in document.
        :'number_of_pages' => :'number_of_pages',
        
        # Error information.
        :'validation_errors' => :'validation_errors'
        
      }
    end

    # attribute type
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
      return if !attributes.is_a?(Hash) || attributes.empty?

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

  end
end
