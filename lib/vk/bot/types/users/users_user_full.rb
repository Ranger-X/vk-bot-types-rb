module VK
  module Bot
    module Types
      class UsersUserFull < UsersUser
        # About me field
        attribute :about, Types::String.optional

        # User's activities
        attribute :activities, Types::String.optional

        # User's status
        attribute :activity, Types::String.optional

        # User's date of birth
        attribute :bdate, Types::String.optional

        # Information whether current user is in the requested user's blacklist.
        attribute :blacklisted, BaseBoolInt.optional

        # Information whether the requested user is in current user's blacklist
        attribute :blacklisted_by_me, BaseBoolInt.optional

        # User's favorite books
        attribute :books, Types::String.optional

        # Information whether current user can post on the user's wall
        attribute :can_post, BaseBoolInt.optional

        # Information whether current user can see other users' audio on the wall
        attribute :can_see_all_posts, BaseBoolInt.optional

        # Information whether current user can see the user's audio
        attribute :can_see_audio, BaseBoolInt.optional

        # Information whether current user can send a friend request
        attribute :can_send_friend_request, BaseBoolInt.optional

        # Owner in whitelist or not
        attribute :can_subscribe_podcasts, Types::Strict::Bool.optional

        # Can subscribe to wall
        attribute :can_subscribe_posts, Types::Strict::Bool.optional

        # Information whether current user can write private message
        attribute :can_write_private_message, BaseBoolInt.optional

        attribute :career, Types.Array(UsersCareer).optional
        attribute :city,   BaseObject.optional

        # Number of common friends with current user
        attribute :common_count, Types::Int.optional

        attribute :country,    BaseCountry.optional
        attribute :crop_photo, UsersCropPhoto.optional

        # Domain name of the user's page
        attribute :domain, Types::String.optional

        # Education form
        attribute :education_form, Types::String.optional

        # User's education status
        attribute :education_status, Types::String.optional

        attribute :exports, UsersExports.optional

        # User's Facebook account
        attribute :facebook, Types::String.optional

        # User's Facebook name
        attribute :facebook_name, Types::String.optional

        # Faculty ID
        attribute :faculty, Types::Int.optional

        # Faculty name
        attribute :faculty_name, Types::String.optional

        # Number of user's followers
        attribute :followers_count, Types::Int.optional

        # Friend status for current user
        attribute :friend_status, Types::Int.optional

        # User's favorite games
        attribute :games, Types::String.optional

        # Graduation year
        attribute :graduation, Types::Int.optional

        # Information whether the user specified his phone number
        attribute :has_mobile, BaseBoolInt.optional

        # Information whether the user has main photo
        attribute :has_photo, BaseBoolInt.optional

        # User's mobile phone number
        attribute :home_phone, Types::String.optional

        # User hometown
        attribute :home_town, Types::String.optional

        # User's Instagram account
        attribute :instagram, Types::String.optional

        # User's interests
        attribute :interests, Types::String.optional

        # Information whether the requested user is in faves of current user
        attribute :is_favorite, BaseBoolInt.optional

        # Information whether the user is a friend of current user
        attribute :is_friend, BaseBoolInt.optional

        # Information whether the requested user is hidden from current user's newsfeed
        attribute :is_hidden_from_feed, BaseBoolInt.optional

        # Information whether current user is subscribed to podcasts
        attribute :is_subscribed_podcasts, Types::Strict::Bool.optional

        attribute :last_seen, UsersLastSeen.optional

        # User's Livejournal account
        attribute :livejournal, Types::String.optional

        # User maiden name
        attribute :maiden_name, Types::String.optional

        attribute :military, Types.Array(UsersMilitary).optional

        # Information whether current user can see
        attribute :mobile_phone, Types::String.optional

        # User's favorite movies
        attribute :movies, Types::String.optional

        # User's favorite music
        attribute :music, Types::String.optional

        # User nickname
        attribute :nickname, Types::String.optional

        attribute :occupation, UsersOccupation.optional
        attribute :personal,   UsersPersonal.optional

        # URL of square photo of the user with 200 pixels in width
        attribute :photo_200, Types::String.optional

        # URL of user's photo with 200 pixels in width
        attribute :photo_200__orig, Types::String.optional

        # URL of user's photo with 400 pixels in width
        attribute :photo_400__orig, Types::String.optional

        # ID of the user's main photo
        attribute :photo_id, Types::String.optional

        # URL of square photo of the user with maximum width
        attribute :photo_max, Types::String.optional

        # URL of user's photo of maximum size
        attribute :photo_max_orig, Types::String.optional

        # Favorite quotes
        attribute :quotes, Types::String.optional

        # User relationship status
        attribute :relation, Types::Int.optional

        attribute :relation_partner, UsersUserMin.optional
        attribute :relatives,        Types.Array(UsersRelative).optional
        attribute :schools,          Types.Array(UsersSchool).optional

        # User's website
        attribute :site, Types::String.optional

        # User's Skype nickname
        attribute :skype, Types::String.optional

        # User's status
        attribute :status, Types::String.optional

        attribute :status_audio, AudioAudioFull.optional

        # User's timezone
        attribute :timezone, Types::Int.optional

        # Information whether the community has a "fire" pictogram.
        attribute :trending, BaseBoolInt.optional

        # User's favorite tv shows
        attribute :tv, Types::String.optional

        # User's Twitter account
        attribute :twitter, Types::String.optional

        attribute :universities, Types.Array(UsersUniversity).optional

        # University ID
        attribute :university, Types::Int.optional

        # University name
        attribute :university_name, Types::String.optional

        # Information whether the user is verified
        attribute :verified, BaseBoolInt.optional

        # Information whether current user can comment wall posts
        attribute :wall_comments, BaseBoolInt.optional
      end
    end
  end
end
