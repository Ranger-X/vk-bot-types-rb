module VK
  module Bot
    module Types
      class PhotosImage < Base
        # Height of the photo in px.
        attribute :height, Types::Int.optional

        attribute :photos_image_type, Types::PhotosImageType.optional

        # Photo URL.
        attribute :url, Types::String.optional

        # Width of the photo in px.
        attribute :width, Types::Int.optional
      end
    end
  end
end
