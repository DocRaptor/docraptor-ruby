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


## Usage

Below is a barebones example, more robust examples with [file output and error handling](examples/sync.rb), [asynchronous generation](examples/async.rb), [hosted documents](examples/hosted_sync.rb), or [asynchronous hosted documents](examples/hosted_async.rb) are also available.


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

Documents created synchronously like above are limited to 60 seconds of generation time, the [asynchronous method](examples/async.rb) allows up to 10 minutes.

Our [styling documentation](https://docraptor.com/documentation/style) and [knowledgebase](https://help.docraptor.com) contain tips and guides on creating headers, footers, page numbers, table of contents, and much more.

## More Help

DocRaptor has a lot of more [styling](https://docraptor.com/documentation/style) and [implementation options](https://docraptor.com/documentation/api).

Stuck? We're experts at using DocRaptor so please [email us](mailto:support@docraptor.com) if you run into trouble.


## Development

The majority of the code in this repo is generated using swagger-codegen on [docraptor.yaml](docraptor.yaml). You can modify this file and regenerate the client using `script/generate_language ruby`.


## Release Process

1. Pull latest master
2. Merge feature branch(es) into master
3. `script/test`
4. Increment version in code:
  - `swagger-config.json`
  - `lib/docraptor/version.rb`
5. Update [CHANGELOG.md](CHANGELOG.md)
6. Commit "Release version vX.Y.Z"
7. `rake release`
8. Verify package release at https://rubygems.org/gems/docraptor
9. Refresh documentation on docraptor.com


## Version Policy

This library follows [Semantic Versioning 2.0.0](http://semver.org).
