# Reference
<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

**Functions**

* [`hash_to_xml`](#hash_to_xml): Function that converts a hash to an XML string
* [`xml_to_hash`](#xml_to_hash): Function to convert an xml file into a hash via xml-simple

## Functions

### hash_to_xml

Type: Ruby 4.x API

Function that converts a hash to an XML string

#### `hash_to_xml(Hash $data)`

The hash_to_xml function.

Returns: `String` xml is generated from `$data`

##### `data`

Data type: `Hash`

Hash to be converted into xml

#### `hash_to_xml(Hash $data, Hash $options)`

The hash_to_xml function.

Returns: `String` xml is generated from `$data`

##### `data`

Data type: `Hash`

Hash to be converted into xml

##### `options`

Data type: `Hash`

The second parameter will be passed into XmlSimple.xml_out

### xml_to_hash

Type: Ruby 4.x API

Function to convert an xml file into a hash via xml-simple

#### `xml_to_hash(String $xml_file)`

The xml_to_hash function.

Returns: `Hash` data are converted from xml

##### `xml_file`

Data type: `String`

Local file name to be passed into XmlSimple.xml_in

#### `xml_to_hash(String $xml_file, Hash $options)`

The xml_to_hash function.

Returns: `Hash` data are converted from xml

##### `xml_file`

Data type: `String`

Local file name to be passed into XmlSimple.xml_in

##### `options`

Data type: `Hash`

(optional) second parameter will be passed into XmlSimple.xml_in

