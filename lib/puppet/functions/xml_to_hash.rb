require 'xmlsimple'

# @summary
#     Function to convert an xml file into a hash via xml-simple
Puppet::Functions.create_function(:xml_to_hash) do
  # @param [String] xml_file Local file name to be passed into XmlSimple.xml_in
  #
  # @return [Hash] data are converted from xml
  dispatch :default_impl do
    param 'String', :xml_file
  end

  # @param [String] xml_file Local file name to be passed into XmlSimple.xml_in
  # @param [Hash] options (optional) second parameter will be passed into XmlSimple.xml_in
  #
  # @return [Hash] data are converted from xml
  dispatch :with_options do
    param 'String', :xml_file
    param 'Hash', :options
  end

  def default_impl(xml_file)
    check_file(xml_file)

    XmlSimple.xml_in(xml_file)
  end

  def with_options(xml_file, options)
    check_file(xml_file)

    XmlSimple.xml_in(xml_file, options)
  end

  def check_file(xml_file)
    return if File.file?(xml_file) || File.readable?(xml_file)
    raise Puppet::Error, "#xml_to_hash cannot read the file #{xml_file}"
  end
end
