require 'xmlsimple'

# @summary
#     Function that converts a hash to an XML string
Puppet::Functions.create_function(:hash_to_xml) do
  # @param [Hash] data Hash to be converted into xml
  #
  # @return [String]
  #   xml is generated from `$data`
  dispatch :default_impl do
    param 'Hash', :data
  end

  # @param [Hash] data Hash to be converted into xml
  # @param [Hash] options The second parameter will be passed into XmlSimple.xml_out
  #
  # @return [String]
  #   xml is generated from `$data`
  dispatch :with_options do
    param 'Hash', :data
    param 'Hash', :options
  end

  def default_impl(data)
    XmlSimple.xml_out(data)
  end

  def with_options(data, options)
    XmlSimple.xml_out(data, options)
  end
end
