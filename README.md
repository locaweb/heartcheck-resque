# Heartcheck::Resque

[![Build Status](https://travis-ci.org/locaweb/heartcheck-resque.svg)](https://travis-ci.org/locaweb/heartcheck-resque)

A plugin to check resque connection with heartcheck

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

You can add a check to resque when configure the heartcheck

```ruby
Heartcheck.setup do |config|
  config.add :resque do |c|
    c.add_service(failures_limit: 0)
  end
end
```

## Contributing

1. Fork it ( https://github.com/locaweb/heartcheck-resque/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
