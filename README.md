# NumberToText
A Ruby gem for converting numbers to their text equivalent (e.g. 1000 = One Thousand). The limit of the converter 999999999999 but can be easily extended to convert larger numbers.

## Installation
Add this line to your application's Gemfile:

    gem 'numbertotext-ruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install numbertotext-ruby

## Usage

Require the numbertotext library

	require 'numbertotext'

Convert a number you want (e.g. 1000)

	NumberToText.convert(1000)

Alternatively, you could also convert a number by simply calling the "to_text" method on it

	1000.to_text = "one thousand"


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
