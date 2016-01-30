# This example demonstrates creating a PDF using common options and saving it
# to a place on the filesystem.
#
# It is created asynchronously, which means DocRaptor will render it for up to
# 10 minutes. This is useful when creating many documents in parallel, or very
# large documents with lots of assets.
#
# DocRaptor supports many options for output customization, the full list is
# https://docraptor.com/documentation/api#api_general
#
# You can run this example with: ruby async.rb

require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE" # this key works for test documents
  # dr.debugging = true
end

$docraptor = DocRaptor::DocApi.new

begin

  # https://docraptor.com/documentation/api#api_general
  create_response = $docraptor.create_async_doc(
    test:             true,                                         # test documents are free but watermarked
    document_content: "<html><body>Hello World</body></html>",      # supply content directly
    # document_url:   "http://docraptor.com/examples/invoice.html", # or use a url
    name:             "docraptor-ruby.pdf",                         # help you find a document later
    document_type:    "pdf",                                        # pdf or xls or xlsx
    # javascript:       true,                                       # enable JavaScript processing
    # prince_options: {
    #   media: "screen",                                            # use screen styles instead of print styles
    #   baseurl: "http://hello.com",                                # pretend URL when using document_content
    # },
  )

  loop do
    status_response = $docraptor.get_async_doc_status(create_response.status_id)
    puts "doc status: #{status_response.status}"
    case status_response.status
    when "completed"
      doc_response = $docraptor.get_async_doc(status_response.download_id)
      File.open("/tmp/docraptor-ruby.pdf", "wb") do |file|
        file.write(doc_response)
      end
      puts "Wrote PDF to /tmp/docraptor-ruby.pdf"
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
  puts error.code          # HTTP response code
  puts error.response_body # HTTP response body
  puts error.backtrace[0..3].join("\n")
end
