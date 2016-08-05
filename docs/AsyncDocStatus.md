# DocRaptor::AsyncDocStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | The present status of the document. Can be queued, working, completed, and failed. | [optional] 
**download_url** | **String** | The URL where the document can be retrieved. This URL may only be used a few times. | [optional] 
**download_id** | **String** | The identifier for downloading the document with the download api. | [optional] 
**message** | **String** | Additional information. | [optional] 
**number_of_pages** | **Integer** | Number of PDF pages in document. | [optional] 
**validation_errors** | **String** | Error information. | [optional] 


