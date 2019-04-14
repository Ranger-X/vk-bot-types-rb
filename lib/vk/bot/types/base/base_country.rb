module VK
  module Bot
    module Types
      class BaseCountry < Base
        # Country ID
        attribute :id, Types::Int

        # Country title
        attribute :title, Types::String
      end
    end
  end
end
