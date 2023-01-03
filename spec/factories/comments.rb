# == Schema Information
#
# Table name: comments
#
#  id               :uuid             not null, primary key
#  commentable_type :string           not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  commentable_id   :uuid             not null
#  parent_id        :integer
#  user_id          :uuid             not null
#
# Indexes
#
#  index_comments_on_commentable  (commentable_type,commentable_id)
#  index_comments_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
FactoryBot.define do
  factory :comment do
    user { nil }
    commentable { nil }
    parent_id { 1 }
    body { nil }
  end
end
