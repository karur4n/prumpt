# Prumpt [![Code Climate](https://codeclimate.com/github/karur4n/prumpt/badges/gpa.svg)](https://codeclimate.com/github/karur4n/prumpt) [![Test Coverage](https://codeclimate.com/github/karur4n/prumpt/badges/coverage.svg)](https://codeclimate.com/github/karur4n/prumpt/coverage)

Prompt + Ruby = Prumpt

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'prumpt'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install prumpt

## Usage

```ruby
require 'prumpt'

str_input = Prumpt.ask('str question', :String)
p str_input

int_input = Prumpt.ask('int question', :Int)
p int_input

arry_inputs = Prumpt.ask('arry question', :Array)
p arry_inputs
```

```sh
$ ruby app.rb
str question: body # user input
"body"
int question: 10 # user input
10
arry qustion: 100 'body' #user input
[100, 'body']
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/prumpt. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
