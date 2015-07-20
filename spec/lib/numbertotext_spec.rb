require 'spec_helper'

describe NumberToText do

  it 'should convert 0 to 20 to equivalent text' do
  	ntt = NumberToText
  	actual = [ntt.convert(0),ntt.convert(1),ntt.convert(2),ntt.convert(3),ntt.convert(4),ntt.convert(5),
  				ntt.convert(6),ntt.convert(7),ntt.convert(8),ntt.convert(9),ntt.convert(10),
  					ntt.convert(11),ntt.convert(12),ntt.convert(13),ntt.convert(14),ntt.convert(15),
  						ntt.convert(16),ntt.convert(17),ntt.convert(18),ntt.convert(19)]
  	
  	expected = ['zero','one','two','three','four','five',
  					'six','seven','eight','nine','ten',
  						'eleven','twelve','thirteen','fourteen','fifteen',
  							'sixteen','seventeen','eighteen','nineteen']
  	expect(actual).to eq(expected)
  end

  it 'should convert 20' do
  	actual = NumberToText.convert(20)
  	expected = 'twenty'
  	expect(actual).to eq(expected)
  end

  it 'should convert 21' do
    actual = NumberToText.convert(21)
    expected = 'twenty-one'
    expect(actual).to eq(expected)
  end

  it 'should convert 30' do
    actual = NumberToText.convert(30)
    expected = 'thirty'
    expect(actual).to eq(expected)
  end

  it 'should convert 37' do
    actual = NumberToText.convert(37)
    expected = 'thirty-seven'
    expect(actual).to eq(expected)
  end

  it 'should convert 40' do
    actual = NumberToText.convert(40)
    expected = 'fourty'
    expect(actual).to eq(expected)
  end

  it 'should convert 49' do
    actual = NumberToText.convert(49)
    expected = 'fourty-nine'
    expect(actual).to eq(expected)
  end

  it 'should convert 100' do
    actual = NumberToText.convert(100)
    expected = 'one hundred'
    expect(actual).to eq(expected)
  end

  it 'should convert 101' do
    actual = NumberToText.convert(101)
    expected = 'one hundred and one'
    expect(actual).to eq(expected)
  end

  it 'should convert 121' do
    actual = NumberToText.convert(121)
    expected = 'one hundred and twenty-one'
    expect(actual).to eq(expected)
  end

  it 'should convert 999' do
    actual = NumberToText.convert(999)
    expected = 'nine hundred and ninety-nine'
    expect(actual).to eq(expected)
  end

  it 'should convert 1000' do
    actual = NumberToText.convert(1000)
    expected = 'one thousand'
    expect(actual).to eq(expected)
  end

  it 'should convert 1021' do
    actual = NumberToText.convert(1021)
    expected = 'one thousand and twenty-one'
    expect(actual).to eq(expected)
  end

  it 'should convert 1135' do
    actual = NumberToText.convert(1135)
    expected = 'one thousand, one hundred and thirty-five'
    expect(actual).to eq(expected)
  end

  it 'should convert 9999' do
    actual = NumberToText.convert(9999)
    expected = 'nine thousand, nine hundred and ninety-nine'
    expect(actual).to eq(expected)
  end

  it 'should convert 999999' do
    actual = NumberToText.convert(999999)
    expected = 'nine hundred and ninety-nine thousand, nine hundred and ninety-nine'
    expect(actual).to eq(expected)
  end

  it 'should convert 1000000' do
    actual = NumberToText.convert(1000000)
    expected = 'one million'
    expect(actual).to eq(expected)
  end


  it 'should convert 1000001' do
    actual = NumberToText.convert(1000001)
    expected = 'one million and one'
    expect(actual).to eq(expected)
  end

  it 'should convert 999999999' do
    actual = NumberToText.convert(999999999)
    expected = 'nine hundred and ninety-nine million, nine hundred and ninety-nine thousand, nine hundred and ninety-nine'
    expect(actual).to eq(expected)
  end

  it 'should convert 1000000000' do
    actual = NumberToText.convert(1000000000)
    expected = 'one billion'
    expect(actual).to eq(expected)
  end

  it 'should convert 1000000001' do
    actual = NumberToText.convert(1000000001)
    expected = 'one billion and one'
    expect(actual).to eq(expected)
  end

  it 'should convert 1000000001' do
    actual = NumberToText.convert(1000000001)
    expected = 'one billion and one'
    expect(actual).to eq(expected)
  end

end
