# == Schema Information
#
# Table name: post_comments
#
#  id         :uuid             not null, primary key
#  content    :text             default("t"), not null
#  published  :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  parent_id  :uuid
#  post_id    :uuid             not null
#
# Indexes
#
#  index_post_comments_on_parent_id  (parent_id)
#  index_post_comments_on_title      (title) USING gin
#
FactoryBot.define do
  factory :post_comment do
    post_id { "" }
    parent_id { "" }
    title { "MyString" }
    published { "MyString" }
    content { "MyText" }
  end
end
