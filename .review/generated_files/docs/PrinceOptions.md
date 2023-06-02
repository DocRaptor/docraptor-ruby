# DocRaptor::PrinceOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **baseurl** | **String** | Set the baseurl for assets. | [optional] |
| **no_xinclude** | **Boolean** | Disable XML inclusion. | [optional] |
| **no_network** | **Boolean** | Disable network access. | [optional] |
| **no_parallel_downloads** | **Boolean** | Disables parallel fetching of assets during PDF creation. Useful if your asset host has strict rate limiting. | [optional] |
| **http_user** | **String** | Set the user for HTTP authentication. | [optional] |
| **http_password** | **String** | Set the password for HTTP authentication. | [optional] |
| **http_proxy** | **String** | Set the HTTP proxy server. | [optional] |
| **http_timeout** | **Integer** | Set the HTTP request timeout. | [optional] |
| **insecure** | **Boolean** | Disable SSL verification. | [optional] |
| **media** | **String** | Specify the CSS media type. Defaults to \&quot;print\&quot; but you may want to use \&quot;screen\&quot; for web styles. | [optional][default to &#39;print&#39;] |
| **no_author_style** | **Boolean** | Ignore author stylesheets. | [optional] |
| **no_default_style** | **Boolean** | Ignore default stylesheets. | [optional] |
| **no_embed_fonts** | **Boolean** | Disable font embedding in PDFs. | [optional] |
| **no_subset_fonts** | **Boolean** | Disable font subsetting in PDFs. | [optional] |
| **no_compress** | **Boolean** | Disable PDF compression. | [optional] |
| **encrypt** | **Boolean** | Encrypt PDF output. | [optional] |
| **key_bits** | **Integer** | Set encryption key size. | [optional] |
| **user_password** | **String** | Set the PDF user password. | [optional] |
| **owner_password** | **String** | Set the PDF owner password. | [optional] |
| **disallow_print** | **Boolean** | Disallow printing of this PDF. | [optional] |
| **disallow_copy** | **Boolean** | Disallow copying of this PDF. | [optional] |
| **disallow_annotate** | **Boolean** | Disallow annotation of this PDF. | [optional] |
| **disallow_modify** | **Boolean** | Disallow modification of this PDF. | [optional] |
| **debug** | **Boolean** | Enable Prince debug mode. | [optional] |
| **input** | **String** | Specify the input format. | [optional][default to &#39;html&#39;] |
| **version** | **String** | Deprecated, use the appropriate &#x60;pipeline&#x60; version. Specify a specific verison of PrinceXML to use. | [optional] |
| **javascript** | **Boolean** | Enable PrinceXML JavaScript. DocRaptor JavaScript parsing is also available elsewhere. | [optional] |
| **css_dpi** | **Integer** | Set the DPI when rendering CSS. Defaults to 96 but can be set with Prince 9.0 and up. | [optional] |
| **profile** | **String** | In Prince 9.0 and up you can set the PDF profile. | [optional] |
| **pdf_title** | **String** | Specify the PDF title, part of the document&#39;s metadata. | [optional] |
| **iframes** | **Boolean** | Enable loading of iframes. | [optional] |
| **page_margin** | **String** | Specify the page margin distance. | [optional] |
| **pdf_forms** | **Boolean** | Make form fields editable by default. | [optional] |

## Example

```ruby
require 'docraptor'

instance = DocRaptor::PrinceOptions.new(
  baseurl: null,
  no_xinclude: null,
  no_network: null,
  no_parallel_downloads: null,
  http_user: null,
  http_password: null,
  http_proxy: null,
  http_timeout: null,
  insecure: null,
  media: null,
  no_author_style: null,
  no_default_style: null,
  no_embed_fonts: null,
  no_subset_fonts: null,
  no_compress: null,
  encrypt: null,
  key_bits: null,
  user_password: null,
  owner_password: null,
  disallow_print: null,
  disallow_copy: null,
  disallow_annotate: null,
  disallow_modify: null,
  debug: null,
  input: null,
  version: null,
  javascript: null,
  css_dpi: null,
  profile: null,
  pdf_title: null,
  iframes: null,
  page_margin: null,
  pdf_forms: null
)
```

