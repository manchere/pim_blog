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
require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  
end
