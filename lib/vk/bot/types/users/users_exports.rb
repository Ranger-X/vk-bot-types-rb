module VK
  module Bot
    module Types
      class UsersExports < Base
        attribute :facebook,    Types::Int.optional
        attribute :livejournal, Types::Int.optional
        attribute :twitter,     Types::Int.optional
      end
    end
  end
end
