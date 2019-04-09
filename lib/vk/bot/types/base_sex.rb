module VK
  module Bot
    module Types
      class BaseSex < Types::Strict::String.enum('unknown' => 0, 'female' => 1, 'male' => 2)
      end
    end
  end
end
