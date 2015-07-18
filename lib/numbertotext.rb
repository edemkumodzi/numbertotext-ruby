require 'numbertotext/version' unless defined?(NumberToText::VERSION)

module NumberToText
  
  private
  def self.load_dictionary
    dictionary = ['zero','one','two','three','four','five','six','seven','eight','nine','ten',
    	'eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen','twenty']
    dictionary
  end

  def self.convert(number)
    dictionary = load_dictionary
    dictionary[number]
  end

end
