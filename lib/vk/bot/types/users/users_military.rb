module VK
  module Bot
    module Types
      class UsersMilitary < Base
        # Country ID
        attribute :country_id, Types::Int

        # From year
        attribute :from, Types::Int.optional

        # Military ID
        attribute :id, Types::Int.optional

        # Unit name
        attribute :unit, Types::String

        # Unit ID
        attribute :unit_id, Types::Int

        # Till year
        attribute :until, Types::Int.optional
      end
    end
  end
end
