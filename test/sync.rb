#!/usr/bin/env ruby
require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username = "YOUR_API_KEY_HERE"
  dr.debugging = true
end

doc_api = DocRaptor::ClientApi.new

response = doc_api.docs_post(test: true, document_content: "<html><body>Swagger Ruby</body></html>", name: "swagger-ruby.pdf", document_type: "pdf")
