module VK
  module Bot
    module Types
      class AudioAudioFull < AudioAudio
        # Album ID
        attribute :album_id, Types::Int.optional

        # Date when uploaded
        attribute :date, Types::Int

        # Duration in seconds
        attribute :duration, Types::Int

        # Genre ID
        attribute :genre_id, Types::Int.optional

        attribute :is_hq, BaseBoolInt.optional

        # Lyrics ID
        attribute :lyrics_id, Types::Int.optional

        # Information whether the audio is hidden from search
        attribute :no_search, BaseBoolInt.optional
      end
    end
  end
end
