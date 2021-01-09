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
require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
