# Heartcheck::Resque

[![Build Status](https://travis-ci.org/locaweb/heartcheck-resque.svg)](https://travis-ci.org/locaweb/heartcheck-resque)
[![Code Climate](https://codeclimate.com/github/locaweb/heartcheck-resque/badges/gpa.svg)](https://codeclimate.com/github/locaweb/heartcheck-resque)

##A plugin to check resque connection and error amount with [heartcheck](https://github.com/locaweb/heartcheck).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'heartcheck-resque'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install heartcheck-resque

## Usage

You can check any resque connection that there's in your app.

```ruby
Heartcheck.setup do |config|
  config.add :resque do |c|
    c.add_service(failures_limit: 10)
  end
end
```

### Check Heartcheck example [here](https://github.com/locaweb/heartcheck/blob/master/lib/heartcheck/generators/templates/config.rb)

## License
* [MIT License](https://github.com/locaweb/heartcheck-resque/blob/master/LICENSE.txt)

## Contributing

1. Fork it ( https://github.com/locaweb/heartcheck-resque/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
