require "bundler/setup"
Bundler.require
require "open-uri"

api_key = File.read("#{__dir__}/../.docraptor_key").strip
unless api_key
  raise "Please put a valid (paid plan) api key in the .docraptor_key file when testing this feature."
end

DocRaptor.configure do |dr|
  dr.username  = api_key
  # dr.debugging = true
end

$docraptor = DocRaptor::DocApi.new

output_file = "hosted-ruby-sync.pdf"

output_payload = $docraptor.create_hosted_async_doc(
  test:             false,
  document_content: "<html><body>Hello from Ruby</body></html>",
  name:             output_file,
  document_type:    "pdf",
)

status_response = nil
30.times do
  status_response = $docraptor.get_async_doc_status(output_payload.status_id)
  break if status_response.status == "completed"
  sleep 1
end

# should be the unbranded hosted doc url
unless status_response.download_url.include?("documentdeliver")
  raise "Returned URL was not the unbranded URL"
end



