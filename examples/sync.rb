require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE" # this key works for test documents
  # dr.debugging = true
end

$docraptor = DocRaptor::ClientApi.new

begin

  # https://docraptor.com/documentation/api#api_general
  create_response = $docraptor.create_doc(
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

  FileUtils.cp(create_response.path, "/tmp/docraptor-sync.pdf")
  puts "Wrote PDF to /tmp/docraptor-sync.pdf"

rescue DocRaptor::ApiError => error
  puts "#{error.class}: #{error.message}"
  puts error.code          # HTTP response code
  puts error.response_body # HTTP response body
  puts error.backtrace[0..3].join("\n")
end
