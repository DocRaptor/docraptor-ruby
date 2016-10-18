require "uri"

module DocRaptor
  class DocApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    #
    # Creates a document asynchronously. You must use a callback url or the the returned status id and the status api to find out when it completes. Then use the download api to get the document.
    # @param doc The document to be created.
    # @param [Hash] opts the optional parameters
    # @return [AsyncDoc]
    def create_async_doc(doc, opts = {})
      data, _status_code, _headers = create_async_doc_with_http_info(doc, opts)
      return data
    end

    #
    # Creates a document asynchronously. You must use a callback url or the the returned status id and the status api to find out when it completes. Then use the download api to get the document.
    # @param doc The document to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncDoc, Fixnum, Hash)>] AsyncDoc data, response status code and response headers
    def create_async_doc_with_http_info(doc, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DocApi.create_async_doc ..."
      end
      # verify the required parameter 'doc' is set
      fail ArgumentError, "Missing the required parameter 'doc' when calling DocApi.create_async_doc" if doc.nil?
      # resource path
      local_var_path = "/async_docs".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'application/pdf', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(doc)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsyncDoc')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocApi#create_async_doc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    #
    # Creates a document synchronously.
    # @param doc The document to be created.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def create_doc(doc, opts = {})
      data, _status_code, _headers = create_doc_with_http_info(doc, opts)
      return data
    end

    #
    # Creates a document synchronously.
    # @param doc The document to be created.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def create_doc_with_http_info(doc, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DocApi.create_doc ..."
      end
      # verify the required parameter 'doc' is set
      fail ArgumentError, "Missing the required parameter 'doc' when calling DocApi.create_doc" if doc.nil?
      # resource path
      local_var_path = "/docs".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'application/pdf', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(doc)
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocApi#create_doc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    #
    # Downloads a document.
    # @param id The download_id returned from status request or a callback.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_async_doc(id, opts = {})
      data, _status_code, _headers = get_async_doc_with_http_info(id, opts)
      return data
    end

    #
    # Downloads a document.
    # @param id The download_id returned from status request or a callback.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_async_doc_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DocApi.get_async_doc ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling DocApi.get_async_doc" if id.nil?
      # resource path
      local_var_path = "/download/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'application/pdf', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocApi#get_async_doc\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    #
    # Check on the status of an asynchronously created document.
    # @param id The status_id returned when creating an asynchronous document.
    # @param [Hash] opts the optional parameters
    # @return [AsyncDocStatus]
    def get_async_doc_status(id, opts = {})
      data, _status_code, _headers = get_async_doc_status_with_http_info(id, opts)
      return data
    end

    #
    # Check on the status of an asynchronously created document.
    # @param id The status_id returned when creating an asynchronous document.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AsyncDocStatus, Fixnum, Hash)>] AsyncDocStatus data, response status code and response headers
    def get_async_doc_status_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DocApi.get_async_doc_status ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling DocApi.get_async_doc_status" if id.nil?
      # resource path
      local_var_path = "/status/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      local_header_accept = ['application/json', 'application/xml', 'application/pdf', 'application/vnd.ms-excel', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet']
      local_header_accept_result = @api_client.select_header_accept(local_header_accept) and header_params['Accept'] = local_header_accept_result

      # HTTP header 'Content-Type'
      local_header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(local_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AsyncDocStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DocApi#get_async_doc_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
