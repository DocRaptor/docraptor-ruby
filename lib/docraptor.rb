=begin
#DocRaptor v1

#A native client library for the DocRaptor HTML to PDF/XLS service.

OpenAPI spec version: 1.3.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

# Common files
require 'docraptor/api_client'
require 'docraptor/api_error'
require 'docraptor/version'
require 'docraptor/configuration'

# Models
require 'docraptor/models/async_doc'
require 'docraptor/models/async_doc_status'
require 'docraptor/models/doc'
require 'docraptor/models/prince_options'

# APIs
require 'docraptor/api/doc_api'

module DocRaptor
  class << self
    # Customize default settings for the SDK using block.
    #   DocRaptor.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
