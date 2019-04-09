module VK
  module Bot
    module Types
      class UsersPersonal < Base
        # User's views on alcohol
        attribute :alcohol, Types::Int.optional

        # User's inspired by
        attribute :inspired_by, Types::String.optional

        attribute :langs, Types.Array(Types::String).optional

        # User's personal priority in life
        attribute :life_main, Types::Int.optional

        # User's personal priority in people
        attribute :people_main, Types::Int.optional

        # User's political views
        attribute :political, Types::Int.optional

        # User's religion
        attribute :religion, Types::String.optional

        # User's views on smoking
        attribute :smoking, Types::Int.optional
      end
    end
  end
end
