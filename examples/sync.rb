# This example demonstrates creating a PDF using common options and saving it
# to a place on the filesystem.
#
# It is created synchronously, which means DocRaptor will render it for up to
# 60 seconds. It is slightly simpler than making documents using the async
# interface but making many documents in parallel or very large documents with
# lots of assets will require the async api.
#
# DocRaptor supports many CSS and API options for output customization. Visit
# https://docraptor.com/documentation/ for full details.
#
# You can run this example with: ruby sync.rb

require "docraptor"

DocRaptor.configure do |config|
  config.username = "YOUR_API_KEY_HERE" # this key works in test mode!
end

docraptor = DocRaptor::DocApi.new

begin
  response = docraptor.create_doc(
    test: true, # test documents are free but watermarked
    document_type: "pdf",
    document_content: "<html><body>Hello World!</body></html>",
    # document_url: "https://docraptor.com/examples/invoice.html",
    # javascript: true,
    # prince_options: {
    #   media: "print", # @media 'screen' or 'print' CSS
    #   baseurl: "https://yoursite.com", # the base URL for any relative URLs
    # }
  )

  # create_doc() returns a binary string
  File.write("github-sync.pdf", response, mode: "wb")
  puts "Successfully created github-sync.pdf!"
rescue DocRaptor::ApiError => error
  puts "#{error.class}: #{error.message}"
  puts error.code
  puts error.response_body
  puts error.backtrace[0..3].join("\n")
end
