module DocRaptor
  # 
  class AsyncDoc < BaseObject
    attr_accessor :status_id
    # attribute mapping from ruby-style variable name to JSON key
    def self.attribute_map
      {
        
        # The identifier used to get the status of the document using the status api.
        :'status_id' => :'status_id'
        
      }
    end

    # attribute type
    def self.swagger_types
      {
        :'status_id' => :'String'
        
      }
    end

    def initialize(attributes = {})
      return if !attributes.is_a?(Hash) || attributes.empty?

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'status_id']
        self.status_id = attributes[:'status_id']
      end
      
    end

  end
end
