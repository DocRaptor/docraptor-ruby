require "docraptor"

DocRaptor.configure do |config|
  config.username = "YOUR_API_KEY_HERE" # this key works in test mode!
end

docraptor = DocRaptor::DocApi.new

begin
  # different method than the non-hosted documents
  response = docraptor.create_hosted_doc(
    test: true, # test documents are free but watermarked
    document_type: "pdf",
    document_content: "<html><body>Hello World!</body></html>",
    # document_url: "http://docraptor.com/examples/invoice.html",
    # javascript: false,
    # prince_options: {
    #   media: "print", # @media 'screen' or 'print' CSS
    #   baseurl: "https://yoursite.com", # the base URL for any relative URLs
    # }
  )

  puts "The PDF is hosted at #{response.download_url}"
rescue DocRaptor::ApiError => error
  puts "#{error.class}: #{error.message}"
  puts error.code
  puts error.response_body
  puts error.backtrace[0..3].join("\n")
end
