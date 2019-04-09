module VK
  module Bot
    module Types
      class UsersCropPhoto < Base
        attribute :crop,  UsersCropPhotoCrop.optional
        attribute :photo, PhotosPhoto.optional
        attribute :rect,  UsersCropPhotoRect.optional
      end
    end
  end
end
