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
FactoryBot.define do
  factory :post do
    title { "MyString" }
    body { "MyText" }
  end
end
