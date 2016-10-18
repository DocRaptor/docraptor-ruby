# This example demonstrates creating a PDF using common options and saving it
# to a place on the filesystem.
#
# It is created synchronously, which means DocRaptor will render it for up to
# 60 seconds. It is slightly simpler than making documents using the async
# interface but making many documents in parallel or very large documents with
# lots of assets will require the async api.
#
# DocRaptor supports many options for output customization, the full list is
# https://docraptor.com/documentation/api#api_general
#
# You can run this example with: ruby sync.rb

require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE" # this key works for test documents
  # dr.debugging = true
end

$docraptor = DocRaptor::DocApi.new

begin

  # https://docraptor.com/documentation/api#api_general
  create_response = $docraptor.create_doc(
    test:             true,                                         # test documents are free but watermarked
    document_content: "<html><body>Hello World</body></html>",      # supply content directly
    # document_url:   "http://docraptor.com/examples/invoice.html", # or use a url
    document_type:    "pdf",                                        # pdf or xls or xlsx
    # javascript:       true,                                       # enable JavaScript processing
    # prince_options: {
    #   media: "screen",                                            # use screen styles instead of print styles
    #   baseurl: "http://hello.com",                                # pretend URL when using document_content
    # },
  )
  File.open("/tmp/docraptor-ruby.pdf", "wb") do |file|
    file.write(create_response)
  end
  puts "Wrote PDF to /tmp/docraptor-ruby.pdf"

rescue DocRaptor::ApiError => error
  puts "#{error.class}: #{error.message}"
  puts error.code          # HTTP response code
  puts error.response_body # HTTP response body
  puts error.backtrace[0..3].join("\n")
end
