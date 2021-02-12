# == Schema Information
#
# Table name: users
#
#  id                     :uuid             not null, primary key
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  intro                  :text
#  last_name              :string
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
class User < ApplicationRecord

  # constants
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # VALID_USERNAME_REGEX = /\A[a-zA-Z0-9\-\_]+\z/
  USERNAME_EXCLUSIONS = %w[admin root user password]

  extend FriendlyId
  # attributes
  attr_reader :slug

  # callbacks
  after_create :create_subscription
  after_update :last_password_update_at, if: :saved_change_to_encrypted_password?

  # validations
  validates :slug, uniqueness: true
  validates :email, format: { with: VALID_EMAIL_REGEX }, presence: true
  # validates :username, format: { with: VALID_USERNAME_REGEX },
  #           exclusion: { in: USERNAME_EXCLUSIONS, message: :duplicate },
  #           uniqueness: { case_sensitive: false }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # relationships
  has_many :followed_users, foreign_key: :follower_id, class_name: 'Friendship'
  has_many :followees, through: :followed_users
  has_many :following_users, foreign_key: :followee_id, class_name: 'Friendship'
  has_many :followers, through: :following_users
  has_one :subscription
  has_one :admin
  has_one_attached :image
  has_many :social_media

  # friendly ID
  friendly_id :first_name, use: %i[slugged finders]

  # methods
  def generate_jwt
    JWT.encode({ id: id, exp: 30.days.from_now.to_i }, Rails.application.secret.secret_key_base)
  end

  def create_subscription
    Subscription.create(user_id: id) if subscription.nil?
  end

  def full_name
    [first_name, middle_name, last_name].compact.join(' ')
  end

  def displayed_image(default_image)
    if image.attached?
      image
    else
      default_image
    end
  end

  def admin?
    !admin.nil?
  end

  def last_password_update_at
    update(last_password_updated: DateTime.now)
  end

  def last_password_update_date
    last_password_updated.strftime('%m-%d-%Y') 
  end

  def last_password_update_time
    last_password_updated.strftime('%H:%M') 
  end

end
