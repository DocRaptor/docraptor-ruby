#!/usr/bin/env ruby
require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username = "YOUR_API_KEY_HERE"
  dr.debugging = true
end

doc_api = DocRaptor::ClientApi.new


begin
  response = doc_api.docs_post(test: true, name: "s" * 201, document_type: "pdf")
rescue DocRaptor::ApiError
  exit
end

abort "Exception expected, but not raised"
