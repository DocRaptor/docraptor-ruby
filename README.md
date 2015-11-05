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
  dr.username = "YOUR_API_KEY_HERE" # This key works for test documents
end

doc_api = DocRaptor::ClientApi.new

response = doc_api.docs_post(
  test:             true,                                         # test documents are free but watermarked
  document_content: "<html><body>Hello World</body></html>",      # supply content directly
  # document_url:   "http://docraptor.com/examples/invoice.html", # or use a url
  name:             "swagger-ruby.pdf",                           # help you find a document later
  document_type:    "pdf",                                        # pdf or xls or xlsx
  # javascript:       true,                                       # enable JavaScript processing
  # prince_options: {
  #   media: "screen",                                            # defaults to print
  #   baseurl: "http://hello.com",                                # pretend URL when using document_content
  # },
)
```

If your document will take longer than 60 seconds to render to PDF you will need to use our async api which can take up to 10 minutes, check out the [example](example/async.rb).


We have guides for doing some of the common things:
* [Headers and Footers]() including page skipping
* [CSS Media Selector]() to make the page look exactly as it does in your browser
* [Protected Content]() to secure your URLs so only DocRaptor can access them

## More Help

DocRaptor has a lot of more [styling](https://docraptor.com/documentation#styling) and [implementation options](https://docraptor.com/documentation#api_url).

Stuck? We're experts at using DocRaptor so please [email us](mailto:support@docraptor.com) if you run into trouble.


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
