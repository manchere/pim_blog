# == Schema Information
#
# Table name: subscriptions
#
#  id               :uuid             not null, primary key
#  active           :boolean
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  mtn_momo_user_id :string
#  stripe_user_id   :string
#  user_id          :uuid

FactoryBot.define do
  factory :subscription do
    mtn_momo_user_id { '23530fdg' }
    stripe_user_id { 'sdf092' }
    association :user
  end
end
