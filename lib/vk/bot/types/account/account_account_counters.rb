module VK
  module Bot
    module Types
      class AccountAccountCounters < Base
        # New app requests number
        attribute :app_requests, Types::Int.optional

        # New events number
        attribute :events, Types::Int.optional

        # New friends requests number
        attribute :friends, Types::Int.optional

        # New friends suggestions number
        attribute :friends_suggestions, Types::Int.optional

        # New gifts number
        attribute :gifts, Types::Int.optional

        # New groups number
        attribute :groups, Types::Int.optional

        # New messages number
        attribute :messages, Types::Int.optional

        # New notifications number
        attribute :notifications, Types::Int.optional

        # New photo tags number
        attribute :photos, Types::Int.optional

        # New video tags number
        attribute :videos, Types::Int.optional
      end
    end
  end
end
