require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE"
  # dr.debugging = true
end

$docraptor = DocRaptor::DocApi.new

test_output_dir = File.join(File.dirname(File.expand_path(__FILE__)), "..", "tmp", "test_output")
output_file = File.join(test_output_dir, "#{File.basename(__FILE__, ".rb")}_ruby_#{RUBY_VERSION}.pdf")

# Verify the test works as expected by confirming that this url will fail
# without prince_options[insecure]=true.
begin
  $docraptor.create_doc(
    test:             true,
    document_url: "https://expired.badssl.com/",
    name:             output_file,
    document_type:    "pdf",
  )
rescue DocRaptor::ApiError => ex
  expected_message = "SSL Error downloading document content from supplied url.";
  if ex.message !~ /#{expected_message}/
    raise "Wrong exception, expected: #{expected_message}, got: #{ex.message}"
  end
end

# Verify prince_options works by testing a url that will fail without
# prince_options[insecure]=true.
output_payload = $docraptor.create_doc(
  test:             true,
  document_url: "https://expired.badssl.com/",
  name:             output_file,
  document_type:    "pdf",
  prince_options: {
    insecure: true,
  }
)

File.write(output_file, output_payload)
output_type = `file -b #{output_file}`

raise "Output was not a PDF" unless output_type.start_with?("PDF")
