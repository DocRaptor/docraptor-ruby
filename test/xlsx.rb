require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE"
  dr.debugging = true
end

$docraptor = DocRaptor::ClientApi.new

response = $docraptor.create_doc(
  test:             true,
  document_content: "<html><body><table><tr><td>Hello from Ruby</td></tr></table></body></html>",
  name:             "ruby-xlsx.xlsx",
  document_type:    "xlsx",
)
