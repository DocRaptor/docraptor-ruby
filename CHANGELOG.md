### 1.0.0beta1 [August 5, 2016]
* Regenerated with swagger-codegen v2.2.0
* Dependency update typhoeus
* Development dependency update: json, webmock, pry, rake
* Improve generated gemspec by adding more of the gem details to the swagger config
* `document_content` is no longer a required attribute because there is not a way to say "one of these is required, but only one"

### 0.3.0 [March 11, 2016]
* Added support for prince_options[debug]

### 0.2.0 [January 29, 2016]
* **BREAKING CHANGE**: Rename ClientApi to DocApi

### 0.1.0 [January 27, 2016]
* **BREAKING CHANGE**: create_doc and get_async_doc responses are now binary strings instead of Tempfiles

### 0.0.3 [January 15, 2016]
* Use better API command names: create_doc, create_async_doc, get_async_doc_status, get_async_doc
* Fix file encoding issues when used in Rails

### 0.0.2 [January 6, 2016]
* Regenerate using swagger-codegen v2.1.5

### 0.0.1 [November 1, 2015]
* Initial release
