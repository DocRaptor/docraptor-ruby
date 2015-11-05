# DocRaptor Ruby Native Client Library

**WARNING: This code is not production ready, you should use [doc_raptor_gem](https://github.com/expectedbehavior/doc_raptor_gem).**

This is a Ruby gem for using [DocRaptor API](http://docraptor.com/documentation) to convert HTML to PDF and XLSX.

## Installation

Add the following to your `Gemfile`.

```ruby
gem "docraptor"
```

Then run `bundle install`.

## Usage

```ruby
DocRaptor.configure do |dr|
  dr.username = "YOUR_API_KEY_HERE"
end

doc_api = DocRaptor::ClientApi.new

response = doc_api.docs_post(
  test:             true,                                         # test documents are free but watermarked
  document_content: "<html><body>Hello World</body></html>",      # supply content directly or
  # document_url:   "http://docraptor.com/examples/invoice.html", # use a url
  name:             "swagger-ruby.pdf",                           # help you find a document later
  document_type:    "pdf"                                         # pdf or xls or xlsx
)
```

## Development

The majority of the code in this repo is generated using swagger-codegen on [docraptor.yaml](docraptor.yaml). You can modify this file and regenerate the client using `./generate_language ruby`.

## Release Process

1. Merge code and run tests
2. Increment version in code.
3. Update [CHANGELOG.md](CHANGELOG.md)
4. Push to GitHub
5. `rake release`

## Version Policy

This library follows [Semantic Versioning 2.0.0](http://semver.org).
