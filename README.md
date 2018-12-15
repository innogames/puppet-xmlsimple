[![Build Status](https://travis-ci.org/innogames/puppet-xmlsimple.svg?branch=master)](https://travis-ci.org/innogames/puppet-xmlsimple)
# Description

This module provides two functions to convert Hash objects to xml strings and
vice versa. The usage is described in [REFERENCE.md](./REFERENCE.md)

This module is forked from the https://forge.puppet.com/glarizza/xmlsimple

# Setup

This module requires for gem `xml-simple`. Install it with following command:
```
sudo puppetserver gem install xml-simple
```

# Usage
See the [reference](./REFERENCE.md#functions)

# Reference
**Functions**
* [`hash_to_xml`](./REFERENCE.md#hash_to_xml): Function that converts a hash to an XML string
* [`xml_to_hash`](./REFERENCE.md#xml_to_hash): Function to convert an xml file into a hash via xml-simple

# Limitations

As far as we know, it should work on any system

# Development

Fork this project, develop, make pull request and wait for corresponding auto tests will be done.
