module VK
  module Bot
    module Types
      class AudioAudio < Base
        # Access key for the audio
        attribute :access_key, Types::String.optional

        # Artist name
        attribute :artist, Types::String

        # Audio ID
        attribute :id, Types::Int

        # Audio owner's ID
        attribute :owner_id, Types::Int

        # Title
        attribute :title, Types::String

        # URL of mp3 file
        attribute :url, Types::String.optional
      end
    end
  end
end
