require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE"
  # dr.debugging = true
end

$docraptor = DocRaptor::DocApi.new

output_file = "ruby-async.pdf"

create_response = $docraptor.create_async_doc(
  test:             true,
  document_content: "<html><body>Hello from Ruby</body></html>",
  name:             output_file,
  document_type:    "pdf",
)

status_response = nil
30.times do
  status_response = $docraptor.get_async_doc_status(create_response.status_id)
  break if status_response.status == "completed"
  sleep 1
end

output_payload = $docraptor.get_async_doc(status_response.download_id)

File.write(output_file, output_payload)
output_type = `file -b #{output_file}`
File.delete output_file

raise "Output was not a PDF" unless output_type.start_with?("PDF")
