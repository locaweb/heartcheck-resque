$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'heartcheck/resque'
require 'pry-nav'

RSpec.configure do |config|
  config.mock_with :rspec do |c|
    c.syntax = :expect
  end

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
