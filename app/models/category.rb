# == Schema Information
#
# Table name: categories
#
#  id         :uuid             not null, primary key
#  content    :text             default("t"), not null
#  meta_title :string
#  slug       :string           not null
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  parent_id  :uuid
#
# Indexes
#
#  index_categories_on_meta_title  (meta_title) USING gin
#  index_categories_on_title       (title) USING gin
#
class Category < ApplicationRecord
  has_and_belongs_to_many :posts
end
