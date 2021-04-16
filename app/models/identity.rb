# == Schema Information
#
# Table name: identities
#
#  id         :uuid             not null, primary key
#  provider   :string
#  uid        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :uuid
#
class Identity < ApplicationRecord
    belongs_to :user

    def self.find_with_omniauth(auth)
      find_by(uid: auth['uid'], provider: auth['provider'])
    end
    
end
