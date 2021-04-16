# == Schema Information
#
# Table name: contacts
#
#  id         :uuid             not null, primary key
#  email      :string
#  message    :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Contact < ApplicationRecord
  # validation
  validates :email, presence: true
  validates :name, presence: true
 
  def header
    {
      subject: 'PIM blog message',
      to: 'your#email@gmail.com',
      from: %("#{name}" <#{email}>)
    }
  end

end
