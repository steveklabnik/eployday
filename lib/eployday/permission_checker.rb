module Eployday
  module PermissionChecker
    class << self
      def allowed?(user, list=load_whitelist)
        list.include?(user.nick) and user.authed?
      end

      def load_whitelist
        @whitelist = %w[steveklabnik carols10cents wilkie cl0ckw0rk ddagradi]
      end
    end
  end
end
