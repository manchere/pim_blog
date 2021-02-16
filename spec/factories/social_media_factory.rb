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
FactoryBot.define do
  factory :social_medium do
    platform { "MyString" }
    username { "MyString" }
    link { "MyString" }
  end
end
