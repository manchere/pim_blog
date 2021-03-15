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
require 'rails_helper'

RSpec.describe Market, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
