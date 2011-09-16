require 'cinch'
require 'eployday/deploy'

module Eployday
  class CLI
    def run
      bot = Cinch::Bot.new do
        configure do |c|
          c.nick = "eployday"
          c.server = "irc.freenode.net"
          c.channels = ["#rstatus"]
          c.plugins.plugins = [Deploy]
        end
      end

      bot.start
    end
  end
end
