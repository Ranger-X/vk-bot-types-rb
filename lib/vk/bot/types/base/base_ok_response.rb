module VK
  module Bot
    module Types
      # Returns 1 if request has been processed successfully
      BaseOkResponse = Types::Strict::Integer.enum('ok' => 1).freeze
    end
  end
end
