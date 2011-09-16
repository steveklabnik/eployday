module Eployday
  module PermissionChecker
    class << self
      def allowed?(nick, list=load_whitelist)
        list.include?(nick)
      end

      def load_whitelist
        @whitelist = %w[steveklabnik carols10cents wilkie cl0ckw0rk ddagradi]
      end
    end
  end
end
