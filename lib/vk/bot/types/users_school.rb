module VK
  module Bot
    module Types
      class UsersSchool < Base
        # City ID
        attribute :city, Types::Int.optional

        # School class letter
        attribute :users_school_class, Types::String.optional

        # Country ID
        attribute :country, Types::Int.optional

        # School ID
        attribute :id, Types::String.optional

        # School name
        attribute :name, Types::String.optional

        # School type ID
        attribute :type, Types::Int.optional

        # School type name
        attribute :type_str, Types::String.optional

        # Year the user started to study
        attribute :year_from, Types::Int.optional

        # Graduation year
        attribute :year_graduated, Types::Int.optional

        # Year the user finished to study
        attribute :year_to, Types::Int.optional
      end
    end
  end
end
