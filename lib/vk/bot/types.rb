require 'dry-types'
require 'dry-struct'

module VK
  module Bot
    module Types
      include Dry.Types(:strict, :coercible, default: :coercible)

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

      %w[
        account_account_counters
        base
        base_bool_int
        base_country
        base_object
        base_object_with_name
        base_sex
        photos_image_type
        photos_image
        photos_photo
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
      ].each do |type|
        autoload camelize(type), "vk/bot/types/#{type}"
      end
    end
  end
end
