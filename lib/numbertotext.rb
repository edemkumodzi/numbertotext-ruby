require 'numbertotext/version' unless defined?(NumberToText::VERSION)

module NumberToText
  
  private
  def self.load_dictionary1
    dictionary = ['zero','one','two','three','four','five','six','seven','eight','nine','ten',
    	'eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
    dictionary
  end

  private
  def self.load_dictionary2
    dictionary = ['zero','ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']
  end



  def self.convert(number)
    dictionary1 = load_dictionary1
    if number < 20
      dictionary1[number]
    elsif number < 100 && number > 19
      dictionary2 = load_dictionary2
      tens = number / 10
      remainder = number - tens * 10
      return remainder > 0 ? dictionary2[tens] + '-' + dictionary1[remainder] : dictionary2[tens]
    end
  end

end
