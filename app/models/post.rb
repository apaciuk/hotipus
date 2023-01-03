# == Schema Information
#
# Table name: posts
#
#  id         :uuid             not null, primary key
#  body       :text             default(""), not null
#  title      :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5 }
    validates :body, presence: true, length: { minimum: 5 }
    belongs_to :user, optional: true, class_name: "User"
    has_rich_text :body

end
