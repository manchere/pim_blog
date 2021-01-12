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
class Friendship < ApplicationRecord
  belongs_to :follower, class_name: 'User'
  belongs_to :followee, class_name: 'User'
end
