module VK
  module Bot
    module Types
      class UsersOccupation < Base
        # ID of school, university, company group
        attribute :id, Types::Int.optional

        # Name of occupation
        attribute :name, Types::String.optional

        # Type of occupation
        attribute :type, Types::String.optional
      end
    end
  end
end
