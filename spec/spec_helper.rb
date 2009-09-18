require 'rubygems'
require 'mocha'
require 'spec'
require 'json'

require File.join(File.dirname(__FILE__), %w[.. lib be_valid_json])

Spec::Runner.configure do |config|
  config.mock_with(:mocha)
end
