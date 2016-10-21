require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE"
  # dr.debugging = true
end

$docraptor = DocRaptor::DocApi.new

create_response = $docraptor.create_async_doc(
  test:             true,
  document_content: "<html><body>Hello from Ruby</body></html>",
  name:             "ruby-async.pdf",
  type:             "pdf",
)

status_response = nil
30.times do
  status_response = $docraptor.get_async_doc_status(create_response.status_id)
  break if status_response.status == "completed"
  sleep 1
end

$docraptor.get_async_doc(status_response.download_id)
