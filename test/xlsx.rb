require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE"
  # dr.debugging = true
end

$docraptor = DocRaptor::DocApi.new

test_output_dir = File.join(File.dirname(File.expand_path(__FILE__)), "..", "tmp", "test_output")
output_file = File.join(test_output_dir, "#{File.basename(__FILE__, ".rb")}_ruby_#{RUBY_VERSION}.xlsx")

output_payload = $docraptor.create_doc(
  test:             true,
  document_content: "<html><body><table><tr><td>Hello from Ruby</td></tr></table></body></html>",
  name:             output_file,
  document_type:    "xlsx",
)

File.write(output_file, output_payload)
output_type = `file -b #{output_file}`

acceptable_output_types = [
  "Microsoft Excel 2007+",                      # Newest versions of `file`
  "Microsoft OOXML",                            # Older versions of `file`
  "Zip archive data, at least v2.0 to extract", # Even older versions of `file`
]
if !acceptable_output_types.include?(output_type.strip)
  raise "Output was not an XLSX: #{output_type.inspect}"
end
