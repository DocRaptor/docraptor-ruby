# As a paid add-on, DocRaptor can provide long-term, publicly-accessible hosting for your documents.
# This allows you to provide a URL to your end users, third party tools like Zapier and Salesforce,
# or anyone else. We'll host the document on your behalf at a completely unbranded URL for as long
# as you want, or within the limits you specify.
#
# This example demonstrates creating a PDF using common options that DocRaptor will host for you.
# By default, hosted documents do not have limits on downloads or hosting time, though you may
# pass additional parameters to the document generation call to set your own limits. Learn more
# about the specific options in the hosted API documentation.
# https://docraptor.com/documentation/api#api_hosted
#
# The document is created asynchronously, which means DocRaptor will allow it to generate for up to
# 10 minutes. This is useful when creating many documents in parallel, or very large documents with
# lots of assets.
#
# DocRaptor supports many options for output customization, the full list is
# https://docraptor.com/documentation/api#api_general
#
# You can run this example with: ruby hosted_async.rb

require "bundler/setup"
Bundler.require
require "open-uri"

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE" # you will need a real api key to test hosted documents
  # dr.debugging = true
end

$docraptor = DocRaptor::DocApi.new

begin

  # https://docraptor.com/documentation/api#api_general
  create_response = $docraptor.create_hosted_async_doc(
    test:             true,                                         # test documents are free but watermarked
    document_content: "<html><body>Hello World</body></html>",      # supply content directly
    # document_url:   "http://docraptor.com/examples/invoice.html", # or use a url
    name:             "hosted-ruby-async.pdf",                      # helps you find a document later
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
      puts "The hosted PDF is now available for public download at #{status_response.download_url}"
      File.open("/tmp/docraptor-ruby.pdf", "wb") do |file|
        open(status_response.download_url) do |uri|
          file.write(uri.read)
        end
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
