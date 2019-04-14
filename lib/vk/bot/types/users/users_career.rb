module VK
  module Bot
    module Types
      class UsersCareer < Base
        # City ID
        attribute :city_id, Types::Int.optional

        # Company name
        attribute :company, Types::String.optional

        # Country ID
        attribute :country_id, Types::Int.optional

        # From year
        attribute :from, Types::Int.optional

        # Community ID
        attribute :group_id, Types::Int.optional

        # Career ID
        attribute :id, Types::Int.optional

        # Position
        attribute :position, Types::String.optional

        # Till year
        attribute :until, Types::Int.optional
      end
    end
  end
end
