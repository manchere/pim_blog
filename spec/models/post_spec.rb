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
require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  
end
