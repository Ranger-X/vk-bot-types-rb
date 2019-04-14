module VK
  module Bot
    module Types
      class UsersLastSeen < Base
        # Type of the platform that used for the last authorization
        attribute :platform, Types::Int.optional

        # Last visit date (in Unix time)
        attribute :time, Types::Int.optional
      end
    end
  end
end
