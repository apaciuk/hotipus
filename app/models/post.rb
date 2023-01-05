# == Schema Information
#
# Table name: posts
#
#  id                :uuid             not null, primary key
#  body(Post body)   :text             default(""), not null
#  title(Post title) :string(255)      default(""), not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
class Post < ApplicationRecord
    belongs_to :user, optional: true, counter_cache: true, touch: true, class_name: "User"
    has_rich_text :body
    has_many :comments, as: :commentable, dependent: :destroy, class_name: "Comment"
    has_many :notifications, as: :notifiable, dependent: :destroy
    accepts_nested_attributes_for :comments, allow_destroy: true
end
