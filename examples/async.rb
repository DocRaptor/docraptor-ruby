# This example demonstrates creating a PDF using common options and saving it
# to a place on the filesystem.
#
# It is created asynchronously, which means DocRaptor will render it for up to
# 10 minutes. This is useful when creating many documents in parallel, or very
# large documents with lots of assets.
#
# DocRaptor supports many CSS and API options for output customization. Visit
# https://docraptor.com/documentation/ for full details.
#
# You can run this example with: ruby async.rb

require "docraptor"

DocRaptor.configure do |config|
  config.username = "YOUR_API_KEY_HERE" # this key works in test mode!
end

docraptor = DocRaptor::DocApi.new

begin
  # different method than the synchronous documents
  response = docraptor.create_async_doc(
    test: true, # test documents are free but watermarked
    document_type: "pdf",
    document_content: "<html><body>Hello World!</body></html>",
    # document_url: "https://docraptor.com/examples/invoice.html",
    # javascript: false,
    # prince_options: {
    #   media: "print", # @media 'screen' or 'print' CSS
    #   baseurl: "https://yoursite.com", # the base URL for any relative URLs
    # }
  )

  loop do
    status_response = docraptor.get_async_doc_status(response.status_id)
    puts "status: #{status_response.status}"
    case status_response.status
    when "completed"
      document = docraptor.get_async_doc(status_response.download_id)
      # get_async_doc() returns a binary string
      File.write("github-async.pdf", document, mode: "wb")
      puts "Successfully created github-async.pdf!"
      break
    when "failed"
      puts "FAILED"
      puts status_response
      break
    else
      sleep 1
    end
  end
rescue DocRaptor::ApiError => error
  puts "#{error.class}: #{error.message}"
  puts error.code
  puts error.response_body
  puts error.backtrace[0..3].join("\n")
end
