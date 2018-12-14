require 'spec_helper'

describe 'hash_to_xml' do
  test_data = {
    'custom_root' => {
      'use_graphite' => ['true'],
      'graphite' => [
        {
          'host' => ['127.0.0.1'],
          'use_fqdn' => ['true'],
          'port' => ['3002'],
          'root_path' => ['clickhouse_server'],
          'timeout' => ['0.1'],
        },
      ],
    },
  }

  it do
    out = "\
<custom_root>
  <use_graphite>true</use_graphite>
  <graphite>
    <host>127.0.0.1</host>
    <use_fqdn>true</use_fqdn>
    <port>3002</port>
    <root_path>clickhouse_server</root_path>
    <timeout>0.1</timeout>
  </graphite>
</custom_root>
"

    is_expected.to run.with_params(
      test_data, 'KeepRoot' => true
    ).and_return(out)
  end

  it do
    out = "\
<custom>
  <custom_root>
    <use_graphite>true</use_graphite>
    <graphite>
      <host>127.0.0.1</host>
      <use_fqdn>true</use_fqdn>
      <port>3002</port>
      <root_path>clickhouse_server</root_path>
      <timeout>0.1</timeout>
    </graphite>
  </custom_root>
</custom>
"

    is_expected.to run.with_params(
      test_data, 'RootName' => 'custom'
    ).and_return(out)
  end

  it do
    is_expected.to run.with_params(
      test_data, { 'KeepRoot' => true }, 'third arg'
    ).and_raise_error(Puppet::Error, '#hash_to_xml accepts only one (1) or two (2) arguments, you passed 3')
  end
end
