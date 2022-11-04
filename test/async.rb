require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE"
  # dr.debugging = true
end

$docraptor = DocRaptor::DocApi.new

test_output_dir = File.join(File.dirname(File.expand_path(__FILE__)), "..", "tmp", "test_output")
output_file = File.join(test_output_dir, "#{File.basename(__FILE__, ".rb")}_ruby_#{RUBY_VERSION}.pdf")

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

raise "Output was not a PDF" unless output_type.start_with?("PDF")

