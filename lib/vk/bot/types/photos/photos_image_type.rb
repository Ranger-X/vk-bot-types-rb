module VK
  module Bot
    module Types
      # Photo's type.
      PhotosImageType = Types::Strict::String.enum("s", "m", "x", "o", "p", "q", "r", "y", "z", "w").freeze
    end
  end
end
