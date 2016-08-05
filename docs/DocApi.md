# DocRaptor::DocApi

All URIs are relative to *https://docraptor.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_async_doc**](DocApi.md#create_async_doc) | **POST** /async_docs | 
[**create_doc**](DocApi.md#create_doc) | **POST** /docs | 
[**get_async_doc**](DocApi.md#get_async_doc) | **GET** /download/{id} | 
[**get_async_doc_status**](DocApi.md#get_async_doc_status) | **GET** /status/{id} | 


# **create_async_doc**
> AsyncDoc create_async_doc(doc)



Creates a document asynchronously. You must use a callback url or the the returned status id and the status api to find out when it completes. Then use the download api to get the document. 

### Example
```ruby
# load the gem
require 'docraptor'
# setup authorization
DocRaptor.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = DocRaptor::DocApi.new

doc = DocRaptor::Doc.new # Doc | The document to be created.


begin
  result = api_instance.create_async_doc(doc)
  p result
rescue DocRaptor::ApiError => e
  puts "Exception when calling DocApi->create_async_doc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **doc** | [**Doc**](Doc.md)| The document to be created. | 

### Return type

[**AsyncDoc**](AsyncDoc.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, application/pdf, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet



# **create_doc**
> String create_doc(doc)



Creates a document synchronously. 

### Example
```ruby
# load the gem
require 'docraptor'
# setup authorization
DocRaptor.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = DocRaptor::DocApi.new

doc = DocRaptor::Doc.new # Doc | The document to be created.


begin
  result = api_instance.create_doc(doc)
  p result
rescue DocRaptor::ApiError => e
  puts "Exception when calling DocApi->create_doc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **doc** | [**Doc**](Doc.md)| The document to be created. | 

### Return type

**String**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, application/pdf, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet



# **get_async_doc**
> String get_async_doc(id)



Downloads a document. 

### Example
```ruby
# load the gem
require 'docraptor'
# setup authorization
DocRaptor.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = DocRaptor::DocApi.new

id = "id_example" # String | The download_id returned from status request or a callback.


begin
  result = api_instance.get_async_doc(id)
  p result
rescue DocRaptor::ApiError => e
  puts "Exception when calling DocApi->get_async_doc: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The download_id returned from status request or a callback. | 

### Return type

**String**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, application/pdf, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet



# **get_async_doc_status**
> AsyncDocStatus get_async_doc_status(id)



Check on the status of an asynchronously created document. 

### Example
```ruby
# load the gem
require 'docraptor'
# setup authorization
DocRaptor.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = DocRaptor::DocApi.new

id = "id_example" # String | The status_id returned when creating an asynchronous document.


begin
  result = api_instance.get_async_doc_status(id)
  p result
rescue DocRaptor::ApiError => e
  puts "Exception when calling DocApi->get_async_doc_status: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The status_id returned when creating an asynchronous document. | 

### Return type

[**AsyncDocStatus**](AsyncDocStatus.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/xml, application/pdf, application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet



