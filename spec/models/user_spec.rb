# == Schema Information
#
# Table name: users
#
#  id                     :uuid             not null, primary key
#  country                :string
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  intro                  :text
#  last_name              :string
#  last_password_updated  :datetime
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :inet
#  middle_name            :string
#  phone_number           :string(30)
#  profile                :text
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  slug                   :string           not null
#  token                  :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_phone_number          (phone_number) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_slug                  (slug) UNIQUE
#  index_users_on_token                 (token) UNIQUE
#

#  id                     :uuid             not null, primary key
#  country                :string
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  intro                  :text
#  last_name              :string
#  last_password_updated  :datetime
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :inet
#  middle_name            :string
#  phone_number           :string(30)
#  profile                :text
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  slug                   :string           not null
#  token                  :string
#  username               :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_phone_number          (phone_number) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_slug                  (slug) UNIQUE
#  index_users_on_token                 (token) UNIQUE
#
require 'rails_helper'

RSpec.describe User, type: :model do

  #Relationships
  describe 'Relationships' do
    xit { is_expected.to have_many :posts } 
    xit { is_expected.to have_many :active_relationships } 
    xit { is_expected.to have_many :followees }
    xit { is_expected.to have_many :passive_relationships }
    xit { is_expected.to have_many :followers }
    xit { is_expected.to have_one :admin }
    xit { is_expected.to have_many :social_media }
  end

  #Database indexes
  describe 'Database Indexes' do
    xit { is_expected.to have_db_index ['email'] }
    xit { is_expected.to have_db_index ['phone_number'] }
    xit { is_expected.to have_db_index ['reset_password_token'] }
    xit { is_expected.to have_db_index ['slug'] }
    xit { is_expected.to have_db_index ['token'] }
  end

  # Validations
  context 'Validations' do
    describe 'email' do
      let(:user) { create(:user) }
      let(:old_user) { create(:user) }

      it { is_expected.to_validate_presence_of :email }

      describe 'when user email already in use' do
         it 'should not be valid' do
          # user.email = old_user.email

          expect(user).to_not be_valid
         end
      end

      describe 'when user email is valid' do
        it 'should not be valid' do
          # user.email = 'test@email.com'

          expect(user).to be_valid
        end 
      end

      describe 'when user email is invalid' do
        it 'should not be valid' do
          user.email = 'testemail.com'

          expect(user).to_not be_valid
        end
      end  
    end 
  end
end
