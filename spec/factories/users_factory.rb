# == Schema Information
#
# Table name: users
#
#  id              :uuid             not null, primary key
#  email           :string           not null
#  first_name      :string
#  intro           :text
#  last_login      :date
#  last_name       :string
#  middle_name     :string
#  password_digest :string
#  phone_number    :string(30)
#  profile         :text
#  slug            :string           not null
#  token           :string           not null
#  username        :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email         (email) UNIQUE
#  index_users_on_phone_number  (phone_number) UNIQUE
#  index_users_on_slug          (slug) UNIQUE
#  index_users_on_token         (token) UNIQUE
#
FactoryBot.define do
  pwd = Faker::Internet.password(min_length: 6, max_length: 20, mix_case: true, special_characters: true)
  email_address = sequence(:email) { |n| "user#{n}@example.com" }

  factory :user, class: User, aliases: [:follower, :followee] do
    sequence(:token) { |n| "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c#{n}" }
    slug { Faker::Internet.slug }
    email { email_address }
    password_digest { pwd }
    username { email_address.split('@')[0].to_s }
    first_name { Faker::Name.first_name }
    middle_name { Faker::Name.middle_name }
    last_name { Faker::Name.last_name }
    phone_number { Faker::PhoneNumber.phone_number_with_country_code }
    last_login { Faker::Faker::Date.between(from: 2.years.ago, to: Date.today) }
    intro { Faker::Company.catch_phrase }
    profile { Faker::Company.buzzword }
  end
end
