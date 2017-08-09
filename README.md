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

See [examples](examples/) for runnable examples with file output, error handling, etc.

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

Docs created like this are limited to 60 seconds to render, check out the [async example](examples/async.rb) which allows 10 minutes.

We have guides for doing some of the common things:

* [Headers and Footers](https://docraptor.com/documentation/style#pdf-headers-footers) including page skipping
* [CSS Media Selector](https://docraptor.com/documentation/api#api_basic_pdf) to make the page look exactly as it does in your browser
* Protect content with [HTTP authentication](https://docraptor.com/documentation/api#api_http_user) or [proxies](https://docraptor.com/documentation/api#api_http_proxy) so only DocRaptor can access them


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
