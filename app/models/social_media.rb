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
class SocialMedia < ApplicationRecord
    belongs_to :user

    validates :link, presence: true    
end