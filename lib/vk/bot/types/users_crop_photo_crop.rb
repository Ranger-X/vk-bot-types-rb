module VK
  module Bot
    module Types
      class UsersCropPhotoCrop < Base
        # Coordinate X of the left upper corner
        attribute :x, Types::Double.optional

        # Coordinate X of the right lower corner
        attribute :x2, Types::Double.optional

        # Coordinate Y of the left upper corner
        attribute :y, Types::Double.optional

        # Coordinate Y of the right lower corner
        attribute :y2, Types::Double.optional
      end
    end
  end
end
