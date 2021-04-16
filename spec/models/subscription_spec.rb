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
#
require 'rails_helper'

RSpec.describe Subscription, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
