#!/usr/bin/env ruby
require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username = "YOUR_API_KEY_HERE"
  dr.debugging = true
end

dr = DocRaptor::ClientApi.new

response = dr.docs_post(test: true, document_content: "<html><body><table><tr><td>Swagger Ruby</td></tr></table></body></html>", name: "swagger-ruby.xlsx", document_type: "xlsx")
