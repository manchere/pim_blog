# == Schema Information
#
# Table name: tags
#
#  id         :uuid             not null, primary key
#  content    :text             default("t"), not null
#  meta_title :string
#  slug       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_tags_on_meta_title  (meta_title) USING gin
#  index_tags_on_title       (title) USING gin
#
FactoryBot.define do
  factory :tag do
    title { "MyString" }
    meta_title { "MyString" }
    slug { "MyString" }
    content { "MyText" }
  end
end
