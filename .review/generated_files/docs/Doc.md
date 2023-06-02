# DocRaptor::Doc

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | A name for identifying your document. |  |
| **document_type** | **String** | The type of document being created. |  |
| **document_content** | **String** | The HTML data to be transformed into a document. You must supply content using document_content or document_url.  |  |
| **document_url** | **String** | The URL to fetch the HTML data to be transformed into a document. You must supply content using document_content or document_url.  | [optional] |
| **test** | **Boolean** | Enable test mode for this document. Test documents are not charged for but include a watermark. | [optional][default to true] |
| **pipeline** | **String** | Specify a specific verison of the DocRaptor Pipeline to use. | [optional] |
| **strict** | **String** | Force strict HTML validation. | [optional] |
| **ignore_resource_errors** | **Boolean** | Failed loading of images/javascripts/stylesheets/etc. will not cause the rendering to stop. | [optional][default to true] |
| **ignore_console_messages** | **Boolean** | Prevent console.log from stopping document rendering during JavaScript execution. | [optional][default to false] |
| **tag** | **String** | A field for storing a small amount of metadata with this document. | [optional] |
| **help** | **Boolean** | Request support help with this request if it succeeds. | [optional][default to false] |
| **javascript** | **Boolean** | Enable DocRaptor JavaScript parsing. PrinceXML JavaScript parsing is also available elsewhere. | [optional][default to false] |
| **referrer** | **String** | Set HTTP referrer when generating this document. | [optional] |
| **callback_url** | **String** | A URL that will receive a POST request after successfully completing an asynchronous document. The POST data will include download_url and download_id similar to status API responses. WARNING: this only works on asynchronous documents.  | [optional] |
| **hosted_download_limit** | **Integer** | The number of times a hosted document can be downloaded.  If no limit is specified, the document will be available for an unlimited number of downloads. | [optional] |
| **hosted_expires_at** | **String** | The date and time at which a hosted document will be removed and no longer available. Must be a properly formatted ISO 8601 datetime, like 1981-01-23T08:02:30-05:00. | [optional] |
| **prince_options** | [**PrinceOptions**](PrinceOptions.md) |  | [optional] |

## Example

```ruby
require 'docraptor'

instance = DocRaptor::Doc.new(
  name: null,
  document_type: null,
  document_content: null,
  document_url: null,
  test: null,
  pipeline: null,
  strict: null,
  ignore_resource_errors: null,
  ignore_console_messages: null,
  tag: null,
  help: null,
  javascript: null,
  referrer: null,
  callback_url: null,
  hosted_download_limit: null,
  hosted_expires_at: null,
  prince_options: null
)
```

