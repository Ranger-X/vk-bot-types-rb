module VK
  module Bot
    module Types
      class UsersUserMin < Base
        # Returns if a profile is deleted or blocked
        attribute :deactivated, Types::String.optional

        # User first name
        attribute :first_name, Types::String

        # Returns if a profile is hidden.
        attribute :hidden, Types::Int.optional

        # User ID
        attribute :id, Types::Int

        # User last name
        attribute :last_name, Types::String
      end
    end
  end
end
