# frozen_string_literal: true
require "rspec"
require "pry"

# Add the spec directory to the load path
$LOAD_PATH.unshift(File.dirname(__FILE__))

# Auto-load all Ruby files in the lib directory.
Dir[File.dirname(__FILE__) + "/../lib/*.rb"].each { |file| require file }
