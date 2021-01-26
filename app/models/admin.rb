# == Schema Information
#
# Table name: admins
#
#  id         :uuid             not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :uuid
#
# Indexes
#
#  index_admins_on_user_id  (user_id)
#
class Admin < ApplicationRecord
  # Constants
  MAX_LOGIN_ATTEMPS = 10

  # Relationshoips
  belongs_to :user


  def admin?
    admin.blank?
  end

end
