require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username  = ENV["DOCRAPTOR_KEY"] || "YOUR_API_KEY_HERE"
  # dr.debugging = true
end

# TODO: Remove once pipeline 10 is public. At that point the try it out user
# will be able to use the iframes option, so this test will pass.
unless ENV["DOCRAPTOR_KEY"]
  puts "Skipping #{$0} because DOCRAPTOR_KEY is not set."
  exit(0)
end

$docraptor = DocRaptor::DocApi.new

test_output_dir = File.join(File.dirname(File.expand_path(__FILE__)), "..", "tmp", "test_output")
output_file = File.join(test_output_dir, "#{File.basename(__FILE__, ".rb")}_ruby_#{RUBY_VERSION}.pdf")
output_payload = $docraptor.create_doc(
  test:             true,
  document_content: <<~HTML,
    <html><body>
      <p>Baseline text</p>
      <iframe src="https://docraptor-test-harness.herokuapp.com/public/index.html"></iframe>
    </body></html>
  HTML
  name:             output_file,
  document_type:    "pdf",
  pipeline:         "10",
  # prince_options:   { iframes: true },
)

File.write(output_file, output_payload)
output_type = `file -b #{output_file}`

raise "Output was not a PDF" unless output_type.start_with?("PDF")

text = `pdftotext #{output_file} -`
raise "Output shouldn't load iframe" if text !~ /Test/
