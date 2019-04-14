module VK
  module Bot
    module Types
      class MessagesSendResponse < Base
        # Message ID
        attribute :response, Types::Int.optional
      end
    end
  end
end
