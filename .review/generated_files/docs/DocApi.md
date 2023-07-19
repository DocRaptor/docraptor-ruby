# DocRaptor::DocApi

All URIs are relative to *https://api.docraptor.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_async_doc**](DocApi.md#create_async_doc) | **POST** /async_docs |  |
| [**create_doc**](DocApi.md#create_doc) | **POST** /docs |  |
| [**create_hosted_async_doc**](DocApi.md#create_hosted_async_doc) | **POST** /hosted_async_docs |  |
| [**create_hosted_doc**](DocApi.md#create_hosted_doc) | **POST** /hosted_docs |  |
| [**expire**](DocApi.md#expire) | **PATCH** /expire/{id} |  |
| [**get_async_doc**](DocApi.md#get_async_doc) | **GET** /download/{id} |  |
| [**get_async_doc_status**](DocApi.md#get_async_doc_status) | **GET** /status/{id} |  |


## create_async_doc

> <AsyncDoc> create_async_doc(doc)



Creates a document asynchronously. You must use a callback url or the returned status id and the status API to find out when it completes. Then use the download API to get the document. 

### Examples

```ruby
require 'time'
require 'docraptor'
# setup authorization
DocRaptor.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = DocRaptor::DocApi.new
doc = DocRaptor::Doc.new({name: 'name_example', document_type: 'pdf'}) # Doc | 

begin
  
  result = api_instance.create_async_doc(doc)
  p result
rescue DocRaptor::ApiError => e
  puts "Error when calling DocApi->create_async_doc: #{e}"
end
```

#### Using the create_async_doc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AsyncDoc>, Integer, Hash)> create_async_doc_with_http_info(doc)

```ruby
begin
  
  data, status_code, headers = api_instance.create_async_doc_with_http_info(doc)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AsyncDoc>
rescue DocRaptor::ApiError => e
  puts "Error when calling DocApi->create_async_doc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **doc** | [**Doc**](Doc.md) |  |  |

### Return type

[**AsyncDoc**](AsyncDoc.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## create_doc

> String create_doc(doc)



Creates a document synchronously. 

### Examples

```ruby
require 'time'
require 'docraptor'
# setup authorization
DocRaptor.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = DocRaptor::DocApi.new
doc = DocRaptor::Doc.new({name: 'name_example', document_type: 'pdf'}) # Doc | 

begin
  
  result = api_instance.create_doc(doc)
  p result
rescue DocRaptor::ApiError => e
  puts "Error when calling DocApi->create_doc: #{e}"
end
```

#### Using the create_doc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> create_doc_with_http_info(doc)

```ruby
begin
  
  data, status_code, headers = api_instance.create_doc_with_http_info(doc)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue DocRaptor::ApiError => e
  puts "Error when calling DocApi->create_doc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **doc** | [**Doc**](Doc.md) |  |  |

### Return type

**String**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## create_hosted_async_doc

> <AsyncDoc> create_hosted_async_doc(doc)



Creates a hosted document asynchronously. You must use a callback url or the returned status id and the status API to find out when it completes. Then use the download API to get the document. 

### Examples

```ruby
require 'time'
require 'docraptor'
# setup authorization
DocRaptor.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = DocRaptor::DocApi.new
doc = DocRaptor::Doc.new({name: 'name_example', document_type: 'pdf'}) # Doc | 

begin
  
  result = api_instance.create_hosted_async_doc(doc)
  p result
rescue DocRaptor::ApiError => e
  puts "Error when calling DocApi->create_hosted_async_doc: #{e}"
end
```

#### Using the create_hosted_async_doc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AsyncDoc>, Integer, Hash)> create_hosted_async_doc_with_http_info(doc)

```ruby
begin
  
  data, status_code, headers = api_instance.create_hosted_async_doc_with_http_info(doc)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AsyncDoc>
rescue DocRaptor::ApiError => e
  puts "Error when calling DocApi->create_hosted_async_doc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **doc** | [**Doc**](Doc.md) |  |  |

### Return type

[**AsyncDoc**](AsyncDoc.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## create_hosted_doc

> <DocStatus> create_hosted_doc(doc)



Creates a hosted document synchronously. 

### Examples

```ruby
require 'time'
require 'docraptor'
# setup authorization
DocRaptor.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = DocRaptor::DocApi.new
doc = DocRaptor::Doc.new({name: 'name_example', document_type: 'pdf'}) # Doc | The document to be created.

begin
  
  result = api_instance.create_hosted_doc(doc)
  p result
rescue DocRaptor::ApiError => e
  puts "Error when calling DocApi->create_hosted_doc: #{e}"
end
```

#### Using the create_hosted_doc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocStatus>, Integer, Hash)> create_hosted_doc_with_http_info(doc)

```ruby
begin
  
  data, status_code, headers = api_instance.create_hosted_doc_with_http_info(doc)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocStatus>
rescue DocRaptor::ApiError => e
  puts "Error when calling DocApi->create_hosted_doc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **doc** | [**Doc**](Doc.md) | The document to be created. |  |

### Return type

[**DocStatus**](DocStatus.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## expire

> expire(id)



Expires a previously created hosted doc. 

### Examples

```ruby
require 'time'
require 'docraptor'
# setup authorization
DocRaptor.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = DocRaptor::DocApi.new
id = 'id_example' # String | The download_id returned from status request or hosted document response.

begin
  
  api_instance.expire(id)
rescue DocRaptor::ApiError => e
  puts "Error when calling DocApi->expire: #{e}"
end
```

#### Using the expire_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> expire_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.expire_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DocRaptor::ApiError => e
  puts "Error when calling DocApi->expire_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The download_id returned from status request or hosted document response. |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_async_doc

> String get_async_doc(id)



Downloads a finished document. 

### Examples

```ruby
require 'time'
require 'docraptor'
# setup authorization
DocRaptor.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = DocRaptor::DocApi.new
id = 'id_example' # String | The download_id returned from an async status request or callback.

begin
  
  result = api_instance.get_async_doc(id)
  p result
rescue DocRaptor::ApiError => e
  puts "Error when calling DocApi->get_async_doc: #{e}"
end
```

#### Using the get_async_doc_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_async_doc_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_async_doc_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue DocRaptor::ApiError => e
  puts "Error when calling DocApi->get_async_doc_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The download_id returned from an async status request or callback. |  |

### Return type

**String**

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*


## get_async_doc_status

> <DocStatus> get_async_doc_status(id)



Check on the status of an asynchronously created document. 

### Examples

```ruby
require 'time'
require 'docraptor'
# setup authorization
DocRaptor.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = DocRaptor::DocApi.new
id = 'id_example' # String | The status_id returned when creating an asynchronous document.

begin
  
  result = api_instance.get_async_doc_status(id)
  p result
rescue DocRaptor::ApiError => e
  puts "Error when calling DocApi->get_async_doc_status: #{e}"
end
```

#### Using the get_async_doc_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocStatus>, Integer, Hash)> get_async_doc_status_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_async_doc_status_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocStatus>
rescue DocRaptor::ApiError => e
  puts "Error when calling DocApi->get_async_doc_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The status_id returned when creating an asynchronous document. |  |

### Return type

[**DocStatus**](DocStatus.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*

