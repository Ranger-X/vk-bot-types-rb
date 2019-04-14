module VK
  module Bot
    module Types
      class BaseObject < Base
        # Object ID
        attribute :id, Types::Strict::Integer

        # Object title
        attribute :title, Types::Strict::String
      end
    end
  end
end
