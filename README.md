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

**Check Heartcheck example** [here](https://github.com/locaweb/heartcheck/blob/master/lib/heartcheck/generators/templates/config.rb)

## Development setup using Docker

The Hearthcheck-Resque provides a container with the current stable version of Ruby released and a second Docker container running Redis. The development setup requires you to have these tools available in your local environment:

-   [Docker](https://docs.docker.com/get-docker/)
-   [Docker Compose](https://docs.docker.com/compose/install/)
-   [Bash](https://www.gnu.org/software/bash/)

#### BootStrap Script to run the dockerized environment

```bash
./scripts/heartcheck-resque setup
```

Run the command `./scripts/heartcheck-cache -h` to see available options.

## Contributing

1.  [Fork it](https://github.com/locaweb/heartcheck-resque/fork)
2.  Create your feature branch ( **git checkout -b my-new-feature** )
3.  Commit your changes ( **git commit -am 'Add some feature'** )
4.  Push to the branch ( **git push origin my-new-feature** )
5.  Create a new Pull Request

## License
*   [MIT License](https://github.com/locaweb/heartcheck-resque/blob/master/LICENSE.txt)
