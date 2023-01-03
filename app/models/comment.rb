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
class Comment < ApplicationRecord
  belongs_to :user, optional: true, class_name: "User"
  belongs_to :commentable, polymorphic: true, optional: true, counter_cache: true, touch: true, class_name: "Post"
  has_rich_text :body
end
