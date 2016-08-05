# DocRaptor::PrinceOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**baseurl** | **String** | Set the baseurl for assets. | [optional] 
**no_xinclude** | **BOOLEAN** | Disable XML inclusion. | [optional] 
**no_network** | **BOOLEAN** | Disable network access. | [optional] 
**http_user** | **String** | Set the user for HTTP authentication. | [optional] 
**http_password** | **String** | Set the password for HTTP authentication. | [optional] 
**http_proxy** | **String** | Set the HTTP proxy server. | [optional] 
**http_timeout** | **Integer** | Set the HTTP request timeout. | [optional] 
**insecure** | **BOOLEAN** | Disable SSL verification. | [optional] 
**media** | **String** | Specify the CSS media type. Defaults to \&quot;print\&quot; but you may want to use \&quot;screen\&quot; for web styles. | [optional] [default to &quot;print&quot;]
**no_author_style** | **BOOLEAN** | Ignore author stylesheets. | [optional] 
**no_default_style** | **BOOLEAN** | Ignore default stylesheets. | [optional] 
**no_embed_fonts** | **BOOLEAN** | Disable font embedding in PDFs. | [optional] 
**no_subset_fonts** | **BOOLEAN** | Disable font subsetting in PDFs. | [optional] 
**no_compress** | **BOOLEAN** | Disable PDF compression. | [optional] 
**encrypt** | **BOOLEAN** | Encrypt PDF output. | [optional] 
**key_bits** | **Integer** | Set encryption key size. | [optional] 
**user_password** | **String** | Set the PDF user password. | [optional] 
**owner_password** | **String** | Set the PDF owner password. | [optional] 
**disallow_print** | **BOOLEAN** | Disallow printing of this PDF. | [optional] 
**disallow_copy** | **BOOLEAN** | Disallow copying of this PDF. | [optional] 
**disallow_annotate** | **BOOLEAN** | Disallow annotation of this PDF. | [optional] 
**disallow_modify** | **BOOLEAN** | Disallow modification of this PDF. | [optional] 
**debug** | **BOOLEAN** | Enable Prince debug mode. | [optional] 
**input** | **String** | Specify the input format. | [optional] [default to &quot;html&quot;]
**version** | **String** | Specify a specific verison of PrinceXML to use. | [optional] 
**javascript** | **BOOLEAN** | Enable PrinceXML JavaScript. DocRaptor JavaScript parsing is also available elsewhere. | [optional] 
**css_dpi** | **Integer** | Set the DPI when rendering CSS. Defaults to 96 but can be set with Prince 9.0 and up. | [optional] 
**profile** | **String** | In Prince 9.0 and up you can set the PDF profile. | [optional] 


