# Heartcheck::Resque

[![Build Status](https://travis-ci.org/locaweb/heartcheck-resque.svg)](https://travis-ci.org/locaweb/heartcheck-resque)

A plugin to check resque connection with heartcheck

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'heartcheck/resque'
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

## Development

You need to setup your environment by running the following command:

    $ bun/setup

### Test suite

The project uses `RSpec` as the test framework.

To run the specs, you can execute the following command:

    $ bin/rspec

### Console

If you want to open a console to make any kind of debugging you should run:

    $ bin/console

## Contributing

1. Fork it ( https://github.com/locaweb/heartcheck-resque/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
