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
require 'rails_helper'

RSpec.describe Tag, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
