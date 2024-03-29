# == Schema Information
#
# Table name: markets
#
#  id                 :uuid             not null, primary key
#  market_description :string
#  market_name        :string
#  position           :integer
#  score              :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :uuid
#
class Market < ApplicationRecord
    belongs_to :user
    has_many :products
    has_many :post_comments, as: :market_comments

    scope :top_markets, -> (number) { order(position: :asc).limit(number) }
    scope :recent_markets, -> (number) { order(created_at: :desc).limit(number) }
end
