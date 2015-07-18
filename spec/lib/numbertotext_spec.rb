require 'spec_helper'

describe NumberToText do
  it 'should convert 0 to zero' do
    result = NumberToText.convert(0)
    expect(result).to eq('zero')
  end

  it 'should convert 1 to one' do
    result = NumberToText.convert(1)
    expect(result).to eq('one')
  end

  it 'should convert 2 to two' do
    result = NumberToText.convert(2)
    expect(result).to eq('two')
  end

  it 'should convert 0 to 9 to equivalent text' do
  	result0 = NumberToText.convert(0)
  	result1 = NumberToText.convert(1)
  	result2 = NumberToText.convert(2)
  	result3 = NumberToText.convert(3)
  	result4 = NumberToText.convert(4)
  	result5 = NumberToText.convert(5)
  	result6 = NumberToText.convert(6)
  	result7 = NumberToText.convert(7)
  	result8 = NumberToText.convert(8)
  	result9 = NumberToText.convert(9)

  	expect(result0).to eq('zero')
  	expect(result1).to eq('one')
  	expect(result2).to eq('two')
  	expect(result3).to eq('three')
  	expect(result4).to eq('four')
  	expect(result5).to eq('five')
  	expect(result6).to eq('six')
  	expect(result7).to eq('seven')
  	expect(result8).to eq('eight')
  	expect(result9).to eq('nine')
  end
end
