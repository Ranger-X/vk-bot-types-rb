module VK
  module Bot
    module Types
      class UsersUniversity < Base
        # Chair ID
        attribute :chair, Types::Int.optional

        # Chair name
        attribute :chair_name, Types::String.optional

        # City ID
        attribute :city, Types::Int.optional

        # Country ID
        attribute :country, Types::Int.optional

        # Education form
        attribute :education_form, Types::String.optional

        # Education status
        attribute :education_status, Types::String.optional

        # Faculty ID
        attribute :faculty, Types::Int.optional

        # Faculty name
        attribute :faculty_name, Types::String.optional

        # Graduation year
        attribute :graduation, Types::Int.optional

        # University ID
        attribute :id, Types::Int.optional

        # University name
        attribute :users_university_name, Types::String.optional
      end
    end
  end
end
