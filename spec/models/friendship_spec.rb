# == Schema Information
#
# Table name: friendships
#
#  id          :uuid             not null, primary key
#  followee_id :uuid
#  follower_id :uuid
#
# Foreign Keys
#
#  fk_rails_...  (followee_id => users.id)
#  fk_rails_...  (follower_id => users.id)
#
require 'rails_helper'

RSpec.describe Friendship, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
