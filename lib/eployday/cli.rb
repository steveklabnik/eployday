require 'cinch'
require 'eployday/configuration'
require 'eployday/deploy'

module Eployday
  class CLI
    def initialize args
      raise "configuration file name required" if args.empty?
    end

    def run
      bot = Cinch::Bot.new do
        configure do |c|
          c.nick = Eployday::Configuration[:nick]
          c.server = "irc.freenode.net"
          c.channels = Eployday::Configuration[:channels]
          c.plugins.plugins = [Deploy]
        end
      end

      bot.start
    end
  end
end
