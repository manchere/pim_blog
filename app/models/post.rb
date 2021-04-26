# == Schema Information
#
# Table name: posts
#
#  id           :uuid             not null, primary key
#  content      :text             default("t"), not null
#  meta_title   :string
#  published    :boolean          not null
#  published_at :date
#  slug         :string           not null
#  summary      :text
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  post_id      :uuid
#  user_id      :uuid             not null
#
# Indexes
#
#  index_posts_on_post_id  (post_id)
#  index_posts_on_title    (title) USING gin
#  index_posts_on_user_id  (user_id)
#
class Post < ApplicationRecord
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :categories
  has_rich_text :content
  belongs_to :user

  # Scopes
  scope :retrieve, -> (search) { Post.where('content LIKE ? OR meta_title LIKE ? OR title LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%") }
  
  def self.search(search)
    if search.present?
      Post.retrieve(search)
    else
      'Please provide a search term'
    end
  end
  
  # ES searchable Concern
  include Searchable

  # settings do
  #   mappings dynamic: 'false' do 
  #     indexes :title, type: :text, analyzer: :autocomplete
  #     indexes :meta_title, type: :text, type: :keyword
  #     indexes :content, type: :text, type: :keyword, analyzer: 'english'
  #   end
  # end
end
