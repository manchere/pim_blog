# == Schema Information
#
# Table name: users
#
#  id                     :uuid             not null, primary key
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  intro                  :text
#  last_name              :string
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :inet
#  middle_name            :string
#  phone_number           :string(30)
#  profile                :text
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  slug                   :string           not null
#  token                  :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_phone_number          (phone_number) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_slug                  (slug) UNIQUE
#  index_users_on_token                 (token) UNIQUE
#

require 'faker'



FactoryBot.define do
  factory :user, class: User, aliases: %i['follower' 'followee'] do
    pwd = Faker::Internet.password(min_length: 6, max_length: 20, mix_case: true, special_characters: true)
    email_address = sequence(:email) { |n| "user#{n}@example.com" }
    # sequence(:token) { |n| "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c#{n}" }
    slug { Faker::Internet.slug }
    email { email_address }
    encrypted_password { pwd }
    username { email_address.split('@')[0].to_s }
    first_name { Faker::Name.first_name }
    middle_name { Faker::Name.middle_name }
    last_name { Faker::Name.last_name }
    phone_number { Faker::PhoneNumber.phone_number_with_country_code }
    last_sign_in_at { Faker::Faker::Date.between(from: 2.years.ago, to: Date.today) }
    last_password_updated { Faker::Date.between(from: 3.years.ago, to: Date.today) }
    intro { Faker::Company.catch_phrase }
    profile { Faker::Company.buzzword }
  end
end
