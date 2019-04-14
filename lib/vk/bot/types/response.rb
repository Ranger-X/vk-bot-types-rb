module VK
  module Bot
    module Types
      module Response
        module_function

        WRAPPED_METHODS = {
          messagesSend: MessagesSendResponse,
        }.freeze

        # Wraps response with a given type. There are some methods that can
        # return either object ot true, so it bypasses true value as is.
        def wrap(object, type)
          return object if object == true
          if type.is_a?(Array)
            type = type.first
            object.map { |x| type.new(x) }
          else
            type.new(object)
          end
        end
      end
    end
  end
end
