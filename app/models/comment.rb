# == Schema Information
#
# Table name: comments
#
#  id                           :uuid             not null, primary key
#  body(Comment body)           :text             default(""), not null
#  commentable_type             :string           not null
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#  commentable_id               :uuid             not null
#  parent_id(Parent comment id) :integer
#  user_id                      :uuid             not null
#
# Indexes
#
#  index_comments_on_commentable  (commentable_type,commentable_id)
#  index_comments_on_parent_id    (parent_id)
#  index_comments_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Comment < ApplicationRecord
  belongs_to :user, optional: true, class_name: "User"
  belongs_to :post, optional: true, class_name: "Post"
  belongs_to :commentable, polymorphic: true, optional: true, class_name: "Comment"
  has_rich_text :body
end
