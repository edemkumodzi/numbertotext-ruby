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
    return @dictionary2[tens] + (remainder > 0 ? '-' + convert1(remainder) : '')
  end

  def self.convert(number)
    if number < 20
      convert1(number)
    elsif number < 100 && number > 19
      convert2(number)
    else
        
    end
  end

end
