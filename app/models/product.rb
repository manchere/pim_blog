# == Schema Information
#
# Table name: products
#
#  id           :uuid             not null, primary key
#  descriptions :text
#  name         :string
#  online       :string
#  position     :integer
#  price        :float
#  score        :integer
#  slug         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  market_id    :uuid
#
class Product < ApplicationRecord
    belongs_to :market
end
