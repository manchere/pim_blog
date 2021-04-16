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
require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
