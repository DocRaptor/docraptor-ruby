require "bundler/setup"
Bundler.require
require "open-uri"

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE"
  # dr.debugging = true
end

$docraptor = DocRaptor::DocApi.new

test_output_dir = File.join(File.dirname(File.expand_path(__FILE__)), "..", "tmp", "test_output")
output_file = File.join(test_output_dir, "#{File.basename(__FILE__, ".rb")}_ruby_#{RUBY_VERSION}.pdf")

output_payload = $docraptor.create_hosted_doc(
  test:             true,
  document_content: "<html><body>Hello from Ruby</body></html>",
  name:             output_file,
  document_type:    "pdf",
  hosted_expires_at: (Time.now + 86400).strftime('%FT%T%:z'), # 1 day from now
)

actual_document = URI.parse(output_payload.download_url).open
IO.copy_stream(actual_document, output_file)

output_type = `file -b #{output_file}`

raise "Output was not a PDF" unless output_type.start_with?("PDF")
