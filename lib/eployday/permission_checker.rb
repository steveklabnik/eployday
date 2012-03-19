module Eployday
  module PermissionChecker
    class << self
      def allowed?(user, list=load_whitelist)
        list.include?(user.nick) and user.authed?
      end

      def load_whitelist
        @whitelist = Eployday::Configuration[:allowed_users]
      end
    end
  end
end
