require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE"
  dr.debugging = true
end

$docraptor = DocRaptor::ClientApi.new

response = $docraptor.create_async_doc(
  test:             true,
  document_content: "<html><body>Hello from Ruby</body></html>",
  name:             "s" * 201, # limit is 200 characters
  document_type:    "pdf",
)

status_response = nil
30.times do
  status_response = $docraptor.get_async_doc_status(response.status_id)
  exit if status_response.status == "failed"
  sleep 1
end

abort "Did not receive failed validation within 30 seconds."
