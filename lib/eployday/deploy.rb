require 'cinch'
require 'eployday/permission_checker'

module Eployday
  class Deploy
    include Cinch::Plugin

    match Eployday::Configuration[:trigger_text], :use_prefix => false

    def execute(m)
      if PermissionChecker.allowed?(m.user)
        m.reply "#{m.user.nick}: beginning deploy."
        Kernel.system Eployday::Configuration[:command]
        m.reply "#{m.user.nick}: deploy finished."
      end
    end
  end
end
