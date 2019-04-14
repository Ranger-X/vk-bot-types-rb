module VK
  module Bot
    module Types
      class PhotosPhoto < Base
        # Access key for the photo
        attribute :access_key, Types::String.optional

        # Album ID
        attribute :album_id, Types::Int

        # Date when uploaded
        attribute :date, Types::Int

        # Original photo height
        attribute :height, Types::Int.optional

        # Photo ID
        attribute :id, Types::Int

        attribute :images, Types.Array(PhotosImage).optional

        # Latitude
        attribute :lat, Types::Double.optional

        # Longitude
        attribute :long, Types::Double.optional

        # Photo owner's ID
        attribute :owner_id, Types::Int

        # Post ID
        attribute :post_id, Types::Int.optional

        # Photo caption
        attribute :text, Types::String.optional

        # ID of the user who have uploaded the photo
        attribute :user_id, Types::Int.optional

        # Original photo width
        attribute :width, Types::Int.optional
      end
    end
  end
end
