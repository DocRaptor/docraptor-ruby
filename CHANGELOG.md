### 1.4.0 [July 31, 2020]
* add support for hosted documents
* upgrade to latest swagger 2.4.14

### 1.3.0 [November 21, 2017]
* Added support for `prince_options[pdf_title]` and `ignore_console_messages` options

### 1.2.0 [August 22, 2017]
* No changes from beta1

### 1.2.0beta1 [August 9, 2017]
* Re-runnning against newer swagger version (v.2.2.3), bumping many gem dependencies to much newer versions. Applications using client *should not* be affected.

### 1.1.0 [November 3, 2016]
* Added support for pipeline API parameter

### 1.0.0 [October 18, 2016]
* No significant code changes

### 0.4.0 [September 26, 2016]
* Added support for prince_options[no_parallel_downloads]

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
