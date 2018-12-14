require 'spec_helper'

describe 'xml_to_hash' do
  sample = File.join(File.dirname(__FILE__), 'sample.xml')

  it do
    is_expected.to run.with_params(
      sample, 'KeepRoot' => true
    ).and_return(
      'root' => [
        { 'node' => [
          {
            'attr' => 'val1',
            'subnode' => ['1', '2'],
          },
          {
            'attr' => 'val2',
            'empty_tag' => [{}],
          },
        ] },
      ],
    )
  end

  it do
    is_expected.to run.with_params(
      sample,
    ).and_return(
      'node' => [
        {
          'attr' => 'val1',
          'subnode' => ['1', '2'],
        },
        {
          'attr' => 'val2',
          'empty_tag' => [{}],
        },
      ],
    )
  end

  it do
    is_expected.to run.with_params(
      'wrong_file.xml',
    ).and_raise_error(Puppet::Error, '#xml_to_hash cannot read the file wrong_file.xml')
  end

  it do
    is_expected.to run.with_params.and_raise_error(Puppet::Error, '#xml_to_hash accepts only one(1) or two(2) arguments, you passed 0')
  end

  it do
    is_expected.to run.with_params(
      sample, { 'KeepRoot' => true }, 'arg3'
    ).and_raise_error(Puppet::Error, '#xml_to_hash accepts only one(1) or two(2) arguments, you passed 3')
  end
end
