require 'numbertotext/version' unless defined?(NumberToText::VERSION)

module NumberToText

  @dictionary1 =['zero','one','two','three','four','five','six','seven','eight','nine','ten',
                 'eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

  @dictionary2 = ['zero','ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']

  #simple conversion from zero to nineteen
  private
  def self.convert1(number)
    @dictionary1[number]
  end

  #convert from twenty to 99 by finding multiple of tens and then recursively convert the remainder
  private
  def self.convert2(number)
    tens = number / 10
    remainder = number - tens * 10
    return @dictionary2[tens] if remainder == 0
    return @dictionary2[tens] + '-' + convert(remainder) if remainder > 0
  end

  #convert from 100 to 999 by finding multiples of hundreds and recursively convert the remainder
  private
  def self.convert3(number)
    hundreds = number / 100
    remainder = number - hundreds * 100
    return @dictionary1[hundreds] + ' hundred' if remainder == 0
    return @dictionary1[hundreds] + ' hundred and ' + convert(remainder) if remainder > 0
  end

  #convert from 1000 to 999999 by finding multiples of thousands and recursively convert the remainder
  private
  def self.convert4(number)
    thousands = number / 1000
    remainder = number - thousands * 1000
    return convert(thousands) + ' thousand' if remainder == 0
    return convert(thousands) + ' thousand and ' + convert(remainder) if (remainder < 100 && remainder > 0)
    return convert(thousands) + ' thousand, ' + convert(remainder) if remainder > 99
  end

  #convert from 1000000 to 999999999 by finding multiples of millions and recursively convert the remainder
  private
  def self.convert5(number)
    millions = number / 1000000
    remainder = number - millions * 1000000
    return convert(millions) + ' million' if remainder == 0
    return convert(millions) + ' million and ' + convert(remainder) if (remainder < 100 && remainder > 0)
    return convert(millions) + ' million, ' + convert(remainder) if remainder > 99
  end



  def self.convert(number)
    if number < 20
      convert1(number)
    elsif number < 100 && number > 19
      convert2(number)
    elsif number < 1000 && number > 99
      convert3(number)
    elsif number < 1000000 && number > 999
      convert4(number)
    elsif number < 1000000000 && number > 999999
       convert5(number) 
    end
  end

end
