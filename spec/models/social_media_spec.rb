# == Schema Information
#
# Table name: social_media
#
#  id         :uuid             not null, primary key
#  link       :string
#  platform   :string
#  username   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe SocialMedia, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
