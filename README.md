# DocRaptor Ruby Native Client Library

This is a Ruby gem for using [DocRaptor API](https://docraptor.com/documentation) to convert [HTML to PDF and XLSX](https://docraptor.com).


## Installation

Add the following to your `Gemfile`.

```ruby
gem "docraptor"
```

Then run:

```bash
bundle install
```


## Basic Usage

```ruby
DocRaptor.configure do |config|
  config.username = "YOUR_API_KEY_HERE" # this key works for test documents
  # config.debugging = true
end

$docraptor = DocRaptor::DocApi.new

response = $docraptor.create_doc(
  test:             true,                                         # test documents are free but watermarked
  document_content: "<html><body>Hello World</body></html>",      # supply content directly
  # document_url:   "http://docraptor.com/examples/invoice.html", # or use a url
  name:             "docraptor-ruby.pdf",                         # help you find a document later
  document_type:    "pdf",                                        # pdf or xls or xlsx
  # javascript:       true,                                       # enable JavaScript processing
  # prince_options: {
  #   media: "screen",                                            # use screen styles instead of print styles
  #   baseurl: "http://hello.com",                                # pretend URL when using document_content
  # },
)
```

## Next Steps

- Optionally store and get a URL for your converted document with [document hosting](https://docraptor.com/document-hosting)
- View more [code examples](examples) with error handling, asynchronous creation, file saving, and document hosting.
- Perfect your document styling with our [style and formatting reference](https://docraptor.com/documentation/style), and [API reference](https://docraptor.com/documentation/api). Easily add headers and footers, page breaks, page numbers, table of contents, and much more!

## More Help

Stuck? We're experts at turning HTML into PDFs so please [email us](mailto:support@docraptor.com) if you run into trouble.


## Development

The majority of the code in this repo is generated using openapi-generator on [docraptor.yaml](docraptor.yaml). You can modify this file and regenerate the client using `script/generate_language`.


## Release Process

1. Pull latest master
2. Merge feature branch(es) into master
3. `script/test`
4. Increment version: `generator-config.json`
5. Run `script/generate_language` to update generated version numbers:
  - `lib/docraptor/version.rb`
6. Update [CHANGELOG.md](CHANGELOG.md)
7. Commit "Release version vX.Y.Z"
8. `script/release`
9. Verify package release at https://rubygems.org/gems/docraptor
10. Refresh documentation on docraptor.com


## Version Policy

This library follows [Semantic Versioning 2.0.0](http://semver.org).
