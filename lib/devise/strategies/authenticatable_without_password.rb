module Devise
  module Strategies
    class DatabaseAuthenticatable < Authenticatable
      def valid_password?
        true
      end
    end
  end
end