require 'numbertotext/version' unless defined?(NumberToText::VERSION)

module NumberToText

  @dictionary1 =['zero','one','two','three','four','five','six','seven','eight','nine','ten',
                 'eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

  @dictionary2 = ['zero','ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']

  #generic convert: uses recursion to convert numbers above 100
  private
  def self.generic_convert(number,multiple,text)
    whole = number / multiple
    remainder = number - whole * multiple
    return convert(whole) + ' ' + text if remainder == 0
    return convert(whole) + ' ' + text + ' and ' + convert(remainder) if (remainder < 100 && remainder > 0)
    return convert(whole) + ' ' + text + ', ' + convert(remainder) if remainder > 99
  end

  #special case for 20 to 99: requires lookup on dictionary two and numbers are formatted with a hyphen in the middle. also uses recursion to convert remainder
  private
  def self.convert_20_to_99(number)
    tens = number / 10
    remainder = number - tens * 10
    return @dictionary2[tens] if remainder == 0
    return @dictionary2[tens] + '-' + convert(remainder) if remainder > 0
  end


  def self.convert(number)
    if number < 0
      return 'minus ' + convert(-1*number)
    elsif number < 20 && number > -1
      return @dictionary1[number]
    elsif number < 100 && number > 19
      convert_20_to_99(number)
    elsif number < 1000 && number > 99
      return generic_convert(number,100,'hundred')
    elsif number < 1000000 && number > 999
      return generic_convert(number,1000,'thousand')
    elsif number < 1000000000 && number > 999999
      return generic_convert(number,1000000,'million')
    elsif number < 1000000000000 && number > 999999999
      return generic_convert(number,1000000000,'billion')
    else
      return 'number too large. please try with a number lower than or equal to 999999999999'
    end
  end
end

class Fixnum
    def to_text
      NumberToText.convert(self)
    end
end