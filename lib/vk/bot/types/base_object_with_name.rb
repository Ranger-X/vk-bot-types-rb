module VK
  module Bot
    module Types
      class BaseObjectWithName < Base
        # Object ID
        attribute :id, Types::Strict::Int

        # Object name
        attribute :name, Types::Strict::String
      end
    end
  end
end
