module VK
  module Bot
    module Types
      class BaseBoolInt < Types::Strict::String.enum('no' => 0, 'yes' => 1)
      end
    end
  end
end
