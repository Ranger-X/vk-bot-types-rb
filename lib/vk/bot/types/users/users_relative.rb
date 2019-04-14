module VK
  module Bot
    module Types
      class UsersRelative < Base
        # Date of child birthday (format dd.mm.yyyy)
        attribute :birth_date, Types::String.optional

        # Relative ID
        attribute :id, Types::Int.optional

        # Name of relative
        attribute :name, Types::String.optional

        # Relative type
        attribute :type, Types::String.enum('parent', 'child', 'grandparent', 'grandchild', 'sibling')
      end
    end
  end
end
