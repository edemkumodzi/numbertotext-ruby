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

  it 'should convert 20 to twenty' do
  	actual = NumberToText.convert(20)
  	expected = 'twenty'
  	expect(actual).to eq(expected)
  end

  it 'should convert 21 to twenty-one' do
    actual = NumberToText.convert(21)
    expected = 'twenty-one'
    expect(actual).to eq(expected)
  end

  it 'should convert 30 to thirty' do
    actual = NumberToText.convert(30)
    expected = 'thirty'
    expect(actual).to eq(expected)
  end

  it 'should convert 37 to thirty-seven' do
    actual = NumberToText.convert(37)
    expected = 'thirty-seven'
    expect(actual).to eq(expected)
  end

  it 'should convert 40 to fourty' do
    actual = NumberToText.convert(40)
    expected = 'fourty'
    expect(actual).to eq(expected)
  end

  it 'should convert 49 to fourty-nine' do
    actual = NumberToText.convert(49)
    expected = 'fourty-nine'
    expect(actual).to eq(expected)
  end

  it 'should convert 100 to one hundred' do
    actual = NumberToText.convert(100)
    expected = 'one hundred'
    expect(actual).to eq(expected)
  end
end
