require 'cinch'

module Eployday
  class Deploy
    include Cinch::Plugin

    match "deploy"

    def execute(m)
      m.reply "#{m.user.nick}: beginning deploy."
      Kernel.system "sm deploy"
      m.reply "#{m.user.nick}: deploy finished."
    end
  end
end

