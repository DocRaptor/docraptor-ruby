# DocRaptor::DocStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | The present status of the document. Can be queued, working, completed, and failed. | [optional] |
| **download_url** | **String** | The URL where the document can be retrieved. This URL may only be used a few times. | [optional] |
| **download_id** | **String** | The identifier for downloading the document with the download API. | [optional] |
| **message** | **String** | Additional information. | [optional] |
| **number_of_pages** | **Integer** | Number of PDF pages in document. | [optional] |
| **validation_errors** | **String** | Error information. | [optional] |

## Example

```ruby
require 'docraptor'

instance = DocRaptor::DocStatus.new(
  status: null,
  download_url: null,
  download_id: null,
  message: null,
  number_of_pages: null,
  validation_errors: null
)
```

