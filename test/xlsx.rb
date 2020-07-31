require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE"
  # dr.debugging = true
end

$docraptor = DocRaptor::DocApi.new

output_file = "ruby-xlsx.xlsx"

output_payload = $docraptor.create_doc(
  test:             true,
  document_content: "<html><body><table><tr><td>Hello from Ruby</td></tr></table></body></html>",
  name:             output_file,
  document_type:    "xlsx",
)

File.write(output_file, output_payload)
output_type = `file -b #{output_file}`
File.delete output_file

raise "Output was not an XLSX (zip)" unless output_type.start_with?("Zip")
