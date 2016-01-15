require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE"
  # dr.debugging = true
end

$docraptor = DocRaptor::ClientApi.new

response = $docraptor.create_doc(
  test:             true,
  document_content: "<html><body>Hello from Ruby</body></html>",
  name:             "ruby-sync.pdf",
  document_type:    "pdf",
)
