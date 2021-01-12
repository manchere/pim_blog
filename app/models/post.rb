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
#  author_id    :uuid             not null
#  parent_id    :uuid
#
# Indexes
#
#  index_posts_on_author_id  (author_id)
#  index_posts_on_parent_id  (parent_id)
#  index_posts_on_title      (title) USING gin
#
class Post < ApplicationRecord
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :categories
end
