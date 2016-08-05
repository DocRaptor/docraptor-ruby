# DocRaptor::Doc

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | A name for identifying your document. | 
**document_type** | **String** | The type of document being created. | 
**document_content** | **String** | The HTML data to be transformed into a document. You must supply content using document_content or document_url.  | 
**document_url** | **String** | The URL to fetch the HTML data to be transformed into a document. You must supply content using document_content or document_url.  | [optional] 
**test** | **BOOLEAN** | Enable test mode for this document. Test documents are not charged for but include a watermark. | [optional] [default to true]
**strict** | **String** | Force strict HTML validation. | [optional] [default to &quot;none&quot;]
**ignore_resource_errors** | **BOOLEAN** | Failed loading of images/javascripts/stylesheets/etc. will not cause the rendering to stop. | [optional] [default to true]
**tag** | **String** | A field for storing a small amount of metadata with this document. | [optional] 
**help** | **BOOLEAN** | Request support help with this request if it succeeds. | [optional] [default to false]
**javascript** | **BOOLEAN** | Enable DocRaptor JavaScript parsing. PrinceXML JavaScript parsing is also available elsewhere. | [optional] [default to false]
**referrer** | **String** | Set HTTP referrer when generating this document. | [optional] 
**callback_url** | **String** | A URL that will receive a POST request after successfully completing an asynchronous document. The POST data will include download_url and download_id similar to status api responses. WARNING: this only works on asynchronous documents.  | [optional] 
**prince_options** | [**PrinceOptions**](PrinceOptions.md) |  | [optional] 


