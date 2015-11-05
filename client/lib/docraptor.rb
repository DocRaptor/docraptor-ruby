# Common files
require 'docraptor/api_client'
require 'docraptor/api_error'
require 'docraptor/version'
require 'docraptor/configuration'

# Models
require 'docraptor/models/base_object'
require 'docraptor/models/doc'
require 'docraptor/models/prince_options'
require 'docraptor/models/async_doc'
require 'docraptor/models/async_doc_status'

# APIs
require 'docraptor/api/client_api'

module DocRaptor
  class << self
    # Configure sdk using block.
    # DocRaptor.configure do |config|
    #   config.username = "xxx"
    #   config.password = "xxx"
    # end
    # If no block given, return the configuration singleton instance.
    def configure
      if block_given?
        yield Configuration.instance
      else
        Configuration.instance
      end
    end
  end
end
