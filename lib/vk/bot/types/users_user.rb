module VK
  module Bot
    module Types
      class UsersUser < UsersUserMin
        # Information whether the user is online
        attribute :online, Types::BaseBoolInt.optional

        # Application ID
        attribute :online_app, Types::Int.optional

        # Information whether the user is online in mobile site or application
        attribute :online_mobile, Types::BaseBoolInt.optional

        # URL of square photo of the user with 100 pixels in width
        attribute :photo_100, Types::String.optional

        # URL of square photo of the user with 50 pixels in width
        attribute :photo_50, Types::String.optional

        # Domain name of the user's page
        attribute :screen_name, Types::String.optional

        # User sex
        attribute :sex, Types::BaseSex.optional
      end
    end
  end
end
