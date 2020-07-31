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

output_payload = $docraptor.create_hosted_doc(
  test:             true,
  document_content: "<html><body>Hello from Ruby</body></html>",
  name:             output_file,
  document_type:    "pdf",
  hosted_expires_at: (Time.now + 86400).strftime('%FT%T%:z'), # 1 day from now
)

actual_document = open output_payload.download_url
IO.copy_stream(actual_document, output_file)

output_type = `file -b #{output_file}`
File.delete output_file

raise "Output was not a PDF" unless output_type.start_with?("PDF")
