FactoryBot.define do
  factory :announcement do
    published_at { "2023-01-03 20:08:39" }
    announcement_type { "MyString" }
    name { "MyString" }
    description { "MyText" }
  end
end
