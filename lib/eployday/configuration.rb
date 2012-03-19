require 'yaml'

module Eployday
  class Configuration
    def initialize args
      @@configuration = YAML.load_file args
    end
    def self.[] key
      puts "-- configuration[#{key}] => #{@@configuration[key.to_s]}"
      @@configuration[key.to_s]
    end
  end
  Configuration.new ARGV.first unless ARGV.empty?
end
