require "bundler/setup"
Bundler.require

DocRaptor.configure do |dr|
  dr.username  = "YOUR_API_KEY_HERE"
  # dr.debugging = true
end

$docraptor = DocRaptor::DocApi.new

begin
  $docraptor.create_doc(
    test: true,
    name: "s" * 201, # limit is 200 characters
    type: "pdf",
  )
rescue DocRaptor::ApiError
  exit
end

abort "Exception expected, but not raised"
