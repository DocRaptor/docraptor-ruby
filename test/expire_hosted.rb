require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE"
  # dr.debugging = true
end

$docraptor = DocRaptor::DocApi.new

output_file = "expire-hosted-ruby-sync.pdf"

output_payload = $docraptor.create_hosted_async_doc(
  test:             true,
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

output_payload = $docraptor.get_doc(status_response.download_id)

File.write(output_file, output_payload)
output_type = `file -b #{output_file}`
File.delete output_file

raise "Output was not a PDF" unless output_type.start_with?("PDF")

$docraptor.expire(status_response.download_id)

begin
  $docraptor.get_doc(status_response.download_id)
rescue DocRaptor::ApiError => api_error
  exit 0
end

exit 1
