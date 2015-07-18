require 'spec_helper'

describe NumberToText do
  it 'should should convert 0 to zero' do
    result = NumberToText.convert(0)
    expect(result).to eq('zero')
  end
end