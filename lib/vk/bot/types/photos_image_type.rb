module VK
  module Bot
    module Types
      # Photo's type.
      class PhotosImageType < Types::Strict::String.enum("s", "m", "x", "o", "p", "q", "r", "y", "z", "w")
      end
    end
  end
end
