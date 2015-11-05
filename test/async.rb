#!/usr/bin/env ruby
require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username = "YOUR_API_KEY_HERE"
  dr.debugging = true
end

doc_api = DocRaptor::ClientApi.new

response = doc_api.async_docs_post(test: true, document_content: "<html><body>Swagger Ruby</body></html>", name: "swagger-ruby.pdf", document_type: "pdf")

status_response = nil
loop do
  status_response = doc_api.status_id_get(response.status_id)
  break if status_response.status == "completed"
  sleep 1
end

puts doc_api.download_id_get(status_response.download_id)

puts "SHITS DONE!"
