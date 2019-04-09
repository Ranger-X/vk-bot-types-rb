module VK
  module Bot
    module Types
      class Base < Dry::Struct
        transform_keys(&:to_sym)

        def to_hash(*)
          super.reject { |_k, v| v.nil? }
        end
      end
    end
  end
end
