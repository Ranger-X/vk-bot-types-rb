require 'dry-types'
require 'dry-struct'

module VK
  module Bot
    module Types
      include Dry.Types :strict, :coercible, default: :coercible

      Int    = Types::Coercible::Integer
      Double = Types::Coercible::Float

      module_function

      # VK API schema (https://github.com/VKCOM/vk-api-schema) converted to dry-struct
      # with help of https://app.quicktype.io/?l=ruby (Type strictness: Coercible, Plain types only)

      # Instruction for semi-automated convertation:
      #
      # 1. Copy JSON schema for ex. from https://raw.githubusercontent.com/VKCOM/vk-api-schema/master/objects.json
      # 2. Paste in quicktype with source type 'JSON Schema'
      # 3. Replace 3 lines:

      # {
      #   "$schema": "http://json-schema.org/draft-06/schema#",
      #   "title": "objects",

      # with:

      # {
      # "$ref": "#/definitions/name_of_definition",

      # for example:
      # {
      #   "$ref": "#/definitions/users_user_min",
      #   "definitions": {
      #     "account_account_counters": {
      #     ...

      # 4. Get the code for every definition (class)

      # Simple implementation for internal use only.
      def camelize(str)
        str.gsub(/(?:_|(\/)|^)([a-z\d]*)/i) { "#{$1}#{$2.capitalize}" }
      end

      [
          # account
          {dir: 'account', items: %w[
            account_account_counters
          ]},

          # audio
          {dir: 'audio', items: %w[
            audio_audio
            audio_audio_full
          ]},

          # base
          {dir: 'base', items: %w[
            base
            base_bool_int
            base_bool_response
            base_country
            base_object
            base_object_with_name
            base_ok_response
            base_sex
          ]},

          # photos
          {dir: 'photos', items: %w[
            photos_image_type
            photos_image
            photos_photo
          ]},

          # users
          {dir: 'users', items: %w[
            users_career
            users_crop_photo_crop
            users_crop_photo_rect
            users_crop_photo
            users_exports
            users_last_seen
            users_military
            users_occupation
            users_personal
            users_relative
            users_school
            users_university
            users_user_min
            users_user
            users_user_full
          ]},

          # responses
          {dir: 'responses', postfix: '_response', items: %w[
            messages_send
          ]},

          # other classes
          {dir: '', items: %w[
            ok_response
            response
          ]},
      ].each do |h|
        h[:items].each do |type|
          autoload camelize("#{type}#{h[:postfix].to_s}"), "vk/bot/types/#{h[:dir].empty? ? '' : "#{h[:dir]}/"}#{type}#{h[:postfix].to_s}"
        end
      end
    end
  end
end
