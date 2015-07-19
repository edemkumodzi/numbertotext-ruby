require 'numbertotext/version' unless defined?(NumberToText::VERSION)

module NumberToText

  @dictionary1 =['zero','one','two','three','four','five','six','seven','eight','nine','ten',
                 'eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

  @dictionary2 = ['zero','ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']

  private
  def self.convert1(number)
    @dictionary1[number]
  end

  private
  def self.convert2(number)
    tens = number / 10
    remainder = number - tens * 10
    return @dictionary2[tens] if remainder == 0
    return @dictionary2[tens] + '-' + convert(remainder) if remainder > 0
  end

  private
  def self.convert3(number)
    hundreds = number / 100
    remainder = number - hundreds * 100
    return @dictionary1[hundreds] + ' hundred' if remainder == 0
    return @dictionary1[hundreds] + ' hundred and ' + convert(remainder) if remainder > 0
  end

  private
  def self.convert4(number)
    thousands = number / 1000
    remainder = number - thousands * 1000
    return convert(thousands) + ' thousand' if remainder == 0
    return convert(thousands) + ' thousand and ' + convert(remainder) if (remainder < 100 && remainder > 0)
    return convert(thousands) + ' thousand, ' + convert(remainder) if remainder > 99
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
    end
  end

end
